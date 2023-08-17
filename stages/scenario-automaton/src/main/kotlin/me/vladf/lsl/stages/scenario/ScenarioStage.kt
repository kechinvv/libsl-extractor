package me.vladf.lsl.stages.scenario

import me.vldf.lsl.extractor.platform.AnalysisStage
import me.vldf.lsl.extractor.platform.GlobalAnalysisContext
import me.vldf.lsl.extractor.platform.KfgHelper.lslName
import me.vldf.lsl.extractor.platform.platformLogger
import me.vldf.lsl.jvm.reader.ClassManagerInitializer
import org.jetbrains.research.libsl.context.AutomatonContext
import org.jetbrains.research.libsl.nodes.Automaton
import org.jetbrains.research.libsl.nodes.Library
import org.jetbrains.research.libsl.nodes.Shift
import org.jetbrains.research.libsl.nodes.State
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

//        for (refinementsFile in analysisContext.pipelineConfig.refinementsFiles) {
//            val libraryDescriptor = analysisContext.descriptorsToLibraries.keys.firstOrNull { descr ->
//                descr.name.contains(refinementsFile.nameWithoutExtension)
//            }
//
//            if (libraryDescriptor == null) {
//                logger.info("no library found for $refinementsFile file")
//                continue
//            }
//
//            val library = analysisContext.descriptorsToLibraries[libraryDescriptor]!!
//            val globalContext = analysisContext.libraryHelper.getContext(libraryDescriptor)
//
//            val automatonContext = AutomatonContext(globalContext)
//
//            val automaton = parseAutomaton(refinementsFile, analysisContext.kfgClassManager)
//
//            val parsedResults = ReportProcessor(analysisContext).parseRefinementsReport(report)
//
//            updateSpecification(automaton, automatonContext, library)
//        }
    }

    private fun generateAutomata() {
        for (refinementsFile in analysisContext.pipelineConfig.refinementsFiles) {
           generateAutomaton(refinementsFile)
        }
    }

    private fun generateAutomaton(refinementsFile: File){
//        val globalContext = analysisContext.libraryHelper.getContext(klass)
//        val library = analysisContext.libraryHelper.getLibrary(klass)
//        val automatonContext = AutomatonContext(globalContext)
       // val automatonTypeRef = TypeReferenceBuilder.build(klass.lslName, context = automatonContext)

        val libraryDescriptor = analysisContext.descriptorsToLibraries.keys.firstOrNull { descr ->
            descr.name.contains(refinementsFile.nameWithoutExtension)
        }

        if (libraryDescriptor == null) {
            logger.info("no library found for $refinementsFile file")
            return
        }

        val library = analysisContext.descriptorsToLibraries[libraryDescriptor]!!
        val globalContext = analysisContext.libraryHelper.getContext(libraryDescriptor)

        val automatonContext = AutomatonContext(globalContext)
        val automatonTypeRef = TypeReferenceBuilder.build("me.vldf.lsl.test.testCase1.TestClass", context = automatonContext)

        val shifts = mutableListOf<Shift>()
        val states = mutableListOf<State>()

        val automaton = Automaton(
            name = "test",
            typeReference = automatonTypeRef,
            context = automatonContext,
            shifts = shifts,
            states = states
        )

        globalContext.storeAutomata(automaton)
        library.automataReferences.add(automaton.getReference(automatonContext))
    }



}