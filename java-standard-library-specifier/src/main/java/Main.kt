import java.nio.file.Paths

fun main(args: Array<String>) {
    val jmodPathStringOrNull = args.getOrNull(1) //"C:/Users/valer/.jdks/jbr-17.0.8/jmods"
    check(jmodPathStringOrNull != null)

    val jmodPath = Paths.get(jmodPathStringOrNull)
    val specifier = JavaLibrarySpecifier(jmodPath)
    val specificationText = specifier.getSpecification()

    val targetFilePath = args.getOrNull(0)
        ?: error("no target path is set!") //C:\Users\valer\IdeaProjects\libsl-extractor\standard-specifications
    val specificationWriter = SpecificationWriter(Paths.get(targetFilePath))
    specificationWriter.write(specificationText)
}
