package me.vladf.lsl.stages.scenario

import kotlinx.serialization.json.Json
import me.vladf.lsl.stages.scenario.entities.Automaton
import me.vldf.lsl.extractor.platform.AnalysisStage
import me.vldf.lsl.extractor.platform.GlobalAnalysisContext
import me.vldf.lsl.extractor.platform.KfgHelper.createAutomatonReference
import me.vldf.lsl.extractor.platform.KfgHelper.lslName
import me.vldf.lsl.extractor.platform.platformLogger
import me.vldf.lsl.jvm.reader.ClassManagerInitializer
import org.jetbrains.research.libsl.context.AutomatonContext
import org.jetbrains.research.libsl.nodes.*
import org.jetbrains.research.libsl.nodes.references.builders.AutomatonReferenceBuilder.getReference
import org.jetbrains.research.libsl.nodes.references.builders.TypeReferenceBuilder
import org.vorpal.research.kfg.ClassManager
import org.vorpal.research.kfg.ir.ConcreteClass
import java.io.File

class ScenarioStage(override val name: String = "scenario-automation-stage") : AnalysisStage {
    private val logger by platformLogger()

    private lateinit var analysisContext: GlobalAnalysisContext
    private lateinit var classManager: ClassManager

    private val classManagerInitializer by lazy {
        ClassManagerInitializer(analysisContext)
    }


    override fun run(analysisContext: GlobalAnalysisContext) {
        val directoryContainer = analysisContext.pipelineConfig.analyzingLibrariesDir

        this.analysisContext = analysisContext
//        classManager = classManagerInitializer.createClassManager(directoryContainer)
//
//        this.analysisContext.kfgClassManager = classManager
//
        generateAutomata()

    }

    private fun generateAutomata() {
        for (automatonFile in analysisContext.pipelineConfig.automatonFiles) {
            generateAutomaton(automatonFile)
        }
    }

    private fun generateAutomaton(automatonFile: File) {
        val automatonJson = automatonFile.readText()
        val automatonDecoded = Json.decodeFromString<Automaton>(automatonJson)


        val libraryDescriptor = analysisContext.descriptorsToLibraries.keys.firstOrNull { descr ->
            descr.name.contains(automatonFile.nameWithoutExtension)
        }

        if (libraryDescriptor == null) {
            logger.info("no library found for $automatonFile file")
            return
        }

        val library = analysisContext.descriptorsToLibraries[libraryDescriptor]!!
        logger.info("REFS ${library.automataReferences.size}")
        library.automataReferences.forEach {
            val automaton = it.resolve()
            automaton?.states?.add(State("init", StateKind.INIT))
        }

    }


}