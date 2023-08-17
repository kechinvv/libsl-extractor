plugins {
    kotlin("plugin.serialization") version "1.8.20"
}

group = "me.vldf"
version = "1.0-SNAPSHOT"

dependencies {
    implementation(project(":stages:lsl-class-reader"))
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.5.1")
}