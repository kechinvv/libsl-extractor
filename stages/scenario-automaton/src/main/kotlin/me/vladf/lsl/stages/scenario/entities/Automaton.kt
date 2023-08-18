package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable

@Serializable
data class Shift(var from: String, var to: String, var with: HashSet<String>) {
    override fun toString(): String = "{from: ${from}, to: ${to}, with: ${with}}"

    fun withToLabel(): String = with.joinToString("\\n ")
}

@Serializable
data class State(val name: String, var type: StateType) {
    override fun toString(): String = "{name: ${name}, type: ${type}}"
}

@Serializable
data class Automaton(val name: String, val `class`: String, val shifts: Set<Shift>, val states: Set<State>)

enum class StateType {
    DEF, INIT, FIN
}