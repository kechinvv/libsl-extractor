package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable

@Serializable
data class MethodData(val name: String, val args: List<String>) {

    fun methodToLslFormat(): MethodData {
        val newArgs = mutableListOf<String>()
        args.forEach { arg ->
            when {
                arg.endsWith("[]") -> newArgs.add("array")
                arg in wrappers.keys -> newArgs.add(wrappers[arg]!!)
                else -> newArgs.add(arg)
            }
        }
        return MethodData(name, newArgs)
    }
}


val wrappers = mapOf(
    "java.lang.Integer" to "int",
    "int" to "int",
    "java.lang.Boolean" to "bool",
    "boolean" to "bool",
    "java.lang.Byte" to "byte",
    "byte" to "byte",
    "java.lang.Character" to "char",
    "char" to "char",
    "java.lang.Short" to "short",
    "short" to "short",
    "java.lang.Long" to "long",
    "long" to "long",
    "java.lang.Float" to "float",
    "float" to "float",
    "java.lang.Double" to "double",
    "double" to "double"
)