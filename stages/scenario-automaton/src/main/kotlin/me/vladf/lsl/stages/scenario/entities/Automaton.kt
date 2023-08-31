package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable





@Serializable
data class Automaton(
    val name: String,
    val `class`: String,
    val shifts: Set<Shift>,
    val states: Set<State>,
    val signature: Boolean
)

