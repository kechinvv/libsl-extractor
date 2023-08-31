package me.vladf.lsl.stages.scenario.entities

import kotlinx.serialization.Serializable

@Serializable
data class Shift(var from: String, var to: String, var with: List<MethodData>) {
    override fun toString(): String = "{from: ${from}, to: ${to}, with: ${with}}"

    fun withToLabel(): String = with.joinToString("\\n ")
}