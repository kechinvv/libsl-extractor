package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable

@Serializable
data class Automaton(val name: String, val `class`: String, val shifts: List<Shift>, val states: List<State>)

@Serializable
data class Shift(val from: String, val to: String, val with: List<String>)

@Serializable
data class State(val name: String, val type: String)