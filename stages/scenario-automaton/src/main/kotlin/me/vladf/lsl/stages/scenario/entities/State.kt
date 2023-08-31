package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable

@Serializable
data class State(val name: String, var type: StateType) {
    override fun toString(): String = "{name: ${name}, type: ${type}}"
}