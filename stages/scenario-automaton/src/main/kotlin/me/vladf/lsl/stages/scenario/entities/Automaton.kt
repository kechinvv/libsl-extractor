package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable

@Serializable
data class Shift(var from: String, var to: String, var with: List<MethodData>) {
    override fun toString(): String = "{from: ${from}, to: ${to}, with: ${with}}"

    fun withToLabel(): String = with.joinToString("\\n ")
}

@Serializable
data class State(val name: String, var type: StateType) {
    override fun toString(): String = "{name: ${name}, type: ${type}}"
}

@Serializable
data class Automaton(
    val name: String,
    val `class`: String,
    val shifts: Set<Shift>,
    val states: Set<State>,
    val signature: Boolean
)

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

enum class StateType {
    DEF, INIT, FIN
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