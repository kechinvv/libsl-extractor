package me.vladf.lsl.stages.scenario

import kotlinx.serialization.json.Json
import me.vladf.lsl.stages.scenario.entities.Automaton
import me.vladf.lsl.stages.scenario.entities.StateType
import me.vldf.lsl.extractor.platform.AnalysisStage
import me.vldf.lsl.extractor.platform.GlobalAnalysisContext
import me.vldf.lsl.extractor.platform.LibraryDescriptor
import me.vldf.lsl.extractor.platform.platformLogger
import me.vldf.lsl.jvm.reader.ClassManagerInitializer
import org.jetbrains.research.libsl.context.LslGlobalContext
import org.jetbrains.research.libsl.nodes.*
import org.jetbrains.research.libsl.nodes.references.AutomatonReference
import org.jetbrains.research.libsl.nodes.references.builders.FunctionReferenceBuilder.getReference
import org.vorpal.research.kfg.ClassManager

class ScenarioStage(override val name: String = "scenario-automation-stage") : AnalysisStage {
    private val logger by platformLogger()

    private lateinit var analysisContext: GlobalAnalysisContext
    private var libraryDescriptor: LibraryDescriptor? = null
    lateinit var library: Library
    private lateinit var globalContext: LslGlobalContext
    lateinit var automataRef: Map<String, AutomatonReference>


    override fun run(analysisContext: GlobalAnalysisContext) {
        if (analysisContext.pipelineConfig.automatonFiles.size == 0) return

        this.analysisContext = analysisContext
        libraryDescriptor = analysisContext.descriptorsToLibraries.keys.firstOrNull { descr ->
            val anyAutomaton = analysisContext.pipelineConfig.automatonFiles.first()
            descr.name.contains(anyAutomaton.parentFile.name)
        }

        if (libraryDescriptor == null) {
            logger.info("no library found")
            return
        }

        library = analysisContext.descriptorsToLibraries[libraryDescriptor]!!
        globalContext = analysisContext.libraryHelper.getContext(libraryDescriptor!!)

        generateAutomata()
    }

    private fun generateAutomata() {

        automataRef = library.automataReferences.associateBy { it.name }

        for (automatonFile in analysisContext.pipelineConfig.automatonFiles) {
            val automatonJson = automatonFile.readText()
            val automatonDecoded = Json.decodeFromString<Automaton>(automatonJson)
            val keyAutomatonReference = automataRef.keys.firstOrNull { name -> name.endsWith(automatonDecoded.`class`) }

            if (keyAutomatonReference != null)
                generateAutomaton(automatonDecoded, automataRef[keyAutomatonReference]!!)
        }
    }

    private fun generateAutomaton(automaton: Automaton, automatonReference: AutomatonReference) {

        val states: Map<String, State> = automaton.states.associate {
            val stateKind = when (it.type) {
                StateType.INIT -> StateKind.INIT
                StateType.FIN -> StateKind.FINISH
                else -> StateKind.SIMPLE
            }
            it.name to State(it.name, stateKind)
        }

        val automatonLsl = automatonReference.resolve()
        val functions = automatonLsl?.functions
        val constructors = automatonLsl?.constructors

        val shifts: List<Shift> = automaton.shifts.map { shift ->
            val shiftFunctions = functions?.filter { shift.with.contains(it.name) }
            val shiftFunctionsRefs = shiftFunctions?.map { it.getReference(globalContext) }?.toMutableList()
            val constructorRef = constructors?.firstOrNull { shift.with.contains(it.name) }?.getReference(globalContext)
            if (constructorRef != null) shiftFunctionsRefs?.add(constructorRef)
            Shift(states[shift.from]!!, states[shift.to]!!, shiftFunctionsRefs!!.toMutableList())
        }

        automatonLsl?.states?.addAll(states.values)
        automatonLsl?.shifts?.addAll(shifts)
    }

}


