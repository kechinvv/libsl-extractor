libsl "1.0.0";
library `annotations-23.0.0`;

import java.lsl;

type org.jetbrains.annotations.ApiStatus {
}

type org.jetbrains.annotations.ApiStatus$AvailableSince {
}

type org.jetbrains.annotations.ApiStatus$Experimental {
}

type org.jetbrains.annotations.ApiStatus$Internal {
}

type org.jetbrains.annotations.ApiStatus$NonExtendable {
}

type org.jetbrains.annotations.ApiStatus$OverrideOnly {
}

type org.jetbrains.annotations.ApiStatus$ScheduledForRemoval {
}

type org.jetbrains.annotations.Async {
}

type org.jetbrains.annotations.Async$Execute {
}

type org.jetbrains.annotations.Async$Schedule {
}

type org.jetbrains.annotations.Blocking {
}

type org.jetbrains.annotations.BlockingExecutor {
}

type org.jetbrains.annotations.Contract {
}

type org.jetbrains.annotations.Debug {
}

type org.jetbrains.annotations.Debug$Renderer {
}

type org.intellij.lang.annotations.Flow {
    DEFAULT_SOURCE: java.lang.String;
    THIS_SOURCE: java.lang.String;
    DEFAULT_TARGET: java.lang.String;
    RETURN_METHOD_TARGET: java.lang.String;
    THIS_TARGET: java.lang.String;
}

type org.intellij.lang.annotations.Identifier {
}

type org.intellij.lang.annotations.JdkConstants {
}

type org.intellij.lang.annotations.JdkConstants$AdjustableOrientation {
}

type org.intellij.lang.annotations.JdkConstants$BoxLayoutAxis {
}

type org.intellij.lang.annotations.JdkConstants$CalendarMonth {
}

type org.intellij.lang.annotations.JdkConstants$CursorType {
}

type org.intellij.lang.annotations.JdkConstants$FlowLayoutAlignment {
}

type org.intellij.lang.annotations.JdkConstants$FontStyle {
}

type org.intellij.lang.annotations.JdkConstants$HorizontalAlignment {
}

type org.intellij.lang.annotations.JdkConstants$HorizontalScrollBarPolicy {
}

type org.intellij.lang.annotations.JdkConstants$InputEventMask {
}

type org.intellij.lang.annotations.JdkConstants$ListSelectionMode {
}

type org.intellij.lang.annotations.JdkConstants$PatternFlags {
}

type org.intellij.lang.annotations.JdkConstants$TabLayoutPolicy {
}

type org.intellij.lang.annotations.JdkConstants$TabPlacement {
}

type org.intellij.lang.annotations.JdkConstants$TitledBorderJustification {
}

type org.intellij.lang.annotations.JdkConstants$TitledBorderTitlePosition {
}

type org.intellij.lang.annotations.JdkConstants$TreeSelectionMode {
}

type org.intellij.lang.annotations.JdkConstants$VerticalScrollBarPolicy {
}

type org.intellij.lang.annotations.Language {
}

type org.intellij.lang.annotations.MagicConstant {
}

type org.jetbrains.annotations.MustBeInvokedByOverriders {
}

type org.jetbrains.annotations.Nls {
}

enum org.jetbrains.annotations.Nls$Capitalization {
    NotSpecified = 0;
    Title = 1;
    Sentence = 2;
}

type org.jetbrains.annotations.NonBlocking {
}

type org.jetbrains.annotations.NonBlockingExecutor {
}

type org.jetbrains.annotations.NonNls {
}

type org.jetbrains.annotations.NotNull {
}

type org.jetbrains.annotations.Nullable {
}

type org.intellij.lang.annotations.Pattern {
}

type org.intellij.lang.annotations.PrintFormat {
}

type org.intellij.lang.annotations.PrintFormatPattern {
    ARG_INDEX: java.lang.String;
    FLAGS: java.lang.String;
    WIDTH: java.lang.String;
    PRECISION: java.lang.String;
    CONVERSION: java.lang.String;
    TEXT: java.lang.String;
    PRINT_FORMAT: java.lang.String;
}

type org.jetbrains.annotations.PropertyKey {
}

type org.jetbrains.annotations.Range {
}

type org.intellij.lang.annotations.RegExp {
}

type org.intellij.lang.annotations.Subst {
}

type org.jetbrains.annotations.TestOnly {
}

type org.jetbrains.annotations.UnknownNullability {
}

type org.jetbrains.annotations.Unmodifiable {
}

type org.jetbrains.annotations.UnmodifiableView {
}

type org.jetbrains.annotations.VisibleForTesting {
}

type module-info {
}

automaton org.jetbrains.annotations.ApiStatus : org.jetbrains.annotations.ApiStatus {
    constructor `constructor`(): void;
    
}
automaton org.jetbrains.annotations.ApiStatus$AvailableSince : org.jetbrains.annotations.ApiStatus$AvailableSince {
    fun value(): java.lang.String;
}
automaton org.jetbrains.annotations.ApiStatus$Experimental : org.jetbrains.annotations.ApiStatus$Experimental {
}
automaton org.jetbrains.annotations.ApiStatus$Internal : org.jetbrains.annotations.ApiStatus$Internal {
}
automaton org.jetbrains.annotations.ApiStatus$NonExtendable : org.jetbrains.annotations.ApiStatus$NonExtendable {
}
automaton org.jetbrains.annotations.ApiStatus$OverrideOnly : org.jetbrains.annotations.ApiStatus$OverrideOnly {
}
automaton org.jetbrains.annotations.ApiStatus$ScheduledForRemoval : org.jetbrains.annotations.ApiStatus$ScheduledForRemoval {
    fun inVersion(): java.lang.String;
}
automaton org.jetbrains.annotations.Async : org.jetbrains.annotations.Async {
    constructor `constructor`(): void;
    
}
automaton org.jetbrains.annotations.Async$Execute : org.jetbrains.annotations.Async$Execute {
}
automaton org.jetbrains.annotations.Async$Schedule : org.jetbrains.annotations.Async$Schedule {
}
automaton org.jetbrains.annotations.Blocking : org.jetbrains.annotations.Blocking {
}
automaton org.jetbrains.annotations.BlockingExecutor : org.jetbrains.annotations.BlockingExecutor {
}
automaton org.jetbrains.annotations.Contract : org.jetbrains.annotations.Contract {
    fun mutates(): java.lang.String;
    
    fun pure(): bool;
    
    fun value(): java.lang.String;
}
automaton org.jetbrains.annotations.Debug : org.jetbrains.annotations.Debug {
    constructor `constructor`(): void;
    
}
automaton org.jetbrains.annotations.Debug$Renderer : org.jetbrains.annotations.Debug$Renderer {
    fun childrenArray(): java.lang.String;
    
    fun hasChildren(): java.lang.String;
    
    fun text(): java.lang.String;
}
automaton org.intellij.lang.annotations.Flow : org.intellij.lang.annotations.Flow {
    val DEFAULT_SOURCE: java.lang.String;
    val THIS_SOURCE: java.lang.String;
    val DEFAULT_TARGET: java.lang.String;
    val RETURN_METHOD_TARGET: java.lang.String;
    val THIS_TARGET: java.lang.String;
    fun source(): java.lang.String;
    
    fun sourceIsContainer(): bool;
    
    fun target(): java.lang.String;
    
    fun targetIsContainer(): bool;
}
automaton org.intellij.lang.annotations.Identifier : org.intellij.lang.annotations.Identifier {
}
automaton org.intellij.lang.annotations.JdkConstants : org.intellij.lang.annotations.JdkConstants {
    constructor `constructor`(): void;
    
}
automaton org.intellij.lang.annotations.JdkConstants$AdjustableOrientation : org.intellij.lang.annotations.JdkConstants$AdjustableOrientation {
}
automaton org.intellij.lang.annotations.JdkConstants$BoxLayoutAxis : org.intellij.lang.annotations.JdkConstants$BoxLayoutAxis {
}
automaton org.intellij.lang.annotations.JdkConstants$CalendarMonth : org.intellij.lang.annotations.JdkConstants$CalendarMonth {
}
automaton org.intellij.lang.annotations.JdkConstants$CursorType : org.intellij.lang.annotations.JdkConstants$CursorType {
}
automaton org.intellij.lang.annotations.JdkConstants$FlowLayoutAlignment : org.intellij.lang.annotations.JdkConstants$FlowLayoutAlignment {
}
automaton org.intellij.lang.annotations.JdkConstants$FontStyle : org.intellij.lang.annotations.JdkConstants$FontStyle {
}
automaton org.intellij.lang.annotations.JdkConstants$HorizontalAlignment : org.intellij.lang.annotations.JdkConstants$HorizontalAlignment {
}
automaton org.intellij.lang.annotations.JdkConstants$HorizontalScrollBarPolicy : org.intellij.lang.annotations.JdkConstants$HorizontalScrollBarPolicy {
}
automaton org.intellij.lang.annotations.JdkConstants$InputEventMask : org.intellij.lang.annotations.JdkConstants$InputEventMask {
}
automaton org.intellij.lang.annotations.JdkConstants$ListSelectionMode : org.intellij.lang.annotations.JdkConstants$ListSelectionMode {
}
automaton org.intellij.lang.annotations.JdkConstants$PatternFlags : org.intellij.lang.annotations.JdkConstants$PatternFlags {
}
automaton org.intellij.lang.annotations.JdkConstants$TabLayoutPolicy : org.intellij.lang.annotations.JdkConstants$TabLayoutPolicy {
}
automaton org.intellij.lang.annotations.JdkConstants$TabPlacement : org.intellij.lang.annotations.JdkConstants$TabPlacement {
}
automaton org.intellij.lang.annotations.JdkConstants$TitledBorderJustification : org.intellij.lang.annotations.JdkConstants$TitledBorderJustification {
}
automaton org.intellij.lang.annotations.JdkConstants$TitledBorderTitlePosition : org.intellij.lang.annotations.JdkConstants$TitledBorderTitlePosition {
}
automaton org.intellij.lang.annotations.JdkConstants$TreeSelectionMode : org.intellij.lang.annotations.JdkConstants$TreeSelectionMode {
}
automaton org.intellij.lang.annotations.JdkConstants$VerticalScrollBarPolicy : org.intellij.lang.annotations.JdkConstants$VerticalScrollBarPolicy {
}
automaton org.intellij.lang.annotations.Language : org.intellij.lang.annotations.Language {
    fun prefix(): java.lang.String;
    
    fun suffix(): java.lang.String;
    
    fun value(): java.lang.String;
}
automaton org.intellij.lang.annotations.MagicConstant : org.intellij.lang.annotations.MagicConstant {
    fun flags(): array<long>;
    
    fun flagsFromClass(): java.lang.Class;
    
    fun intValues(): array<long>;
    
    fun stringValues(): array<java.lang.String>;
    
    fun valuesFromClass(): java.lang.Class;
}
automaton org.jetbrains.annotations.MustBeInvokedByOverriders : org.jetbrains.annotations.MustBeInvokedByOverriders {
}
automaton org.jetbrains.annotations.Nls : org.jetbrains.annotations.Nls {
    fun capitalization(): org.jetbrains.annotations.Nls$Capitalization;
}
automaton org.jetbrains.annotations.Nls$Capitalization (val arg0: java.lang.String, val arg1: int) : org.jetbrains.annotations.Nls$Capitalization {
    val NotSpecified: org.jetbrains.annotations.Nls$Capitalization;
    val Title: org.jetbrains.annotations.Nls$Capitalization;
    val Sentence: org.jetbrains.annotations.Nls$Capitalization;
    val $VALUES: array<org.jetbrains.annotations.Nls$Capitalization>;
    constructor `constructor`(arg0: java.lang.String, arg1: int): void;
    
    fun `static-constructor`(): void {
        assigns NotSpecified;
        assigns Title;
        assigns Sentence;
        assigns $VALUES;
    }
    
    fun valueOf(arg0: java.lang.String): org.jetbrains.annotations.Nls$Capitalization;
    
    fun values(): array<org.jetbrains.annotations.Nls$Capitalization>;
}
automaton org.jetbrains.annotations.NonBlocking : org.jetbrains.annotations.NonBlocking {
}
automaton org.jetbrains.annotations.NonBlockingExecutor : org.jetbrains.annotations.NonBlockingExecutor {
}
automaton org.jetbrains.annotations.NonNls : org.jetbrains.annotations.NonNls {
}
automaton org.jetbrains.annotations.NotNull : org.jetbrains.annotations.NotNull {
    fun exception(): java.lang.Class;
    
    fun value(): java.lang.String;
}
automaton org.jetbrains.annotations.Nullable : org.jetbrains.annotations.Nullable {
    fun value(): java.lang.String;
}
automaton org.intellij.lang.annotations.Pattern : org.intellij.lang.annotations.Pattern {
    fun value(): java.lang.String;
}
automaton org.intellij.lang.annotations.PrintFormat : org.intellij.lang.annotations.PrintFormat {
}
automaton org.intellij.lang.annotations.PrintFormatPattern : org.intellij.lang.annotations.PrintFormatPattern {
    val ARG_INDEX: java.lang.String;
    val FLAGS: java.lang.String;
    val WIDTH: java.lang.String;
    val PRECISION: java.lang.String;
    val CONVERSION: java.lang.String;
    val TEXT: java.lang.String;
    val PRINT_FORMAT: java.lang.String;
    constructor `constructor`(): void;
    
}
automaton org.jetbrains.annotations.PropertyKey : org.jetbrains.annotations.PropertyKey {
    fun resourceBundle(): java.lang.String;
}
automaton org.jetbrains.annotations.Range : org.jetbrains.annotations.Range {
    fun from(): long;
    
    fun to(): long;
}
automaton org.intellij.lang.annotations.RegExp : org.intellij.lang.annotations.RegExp {
    fun prefix(): java.lang.String;
    
    fun suffix(): java.lang.String;
}
automaton org.intellij.lang.annotations.Subst : org.intellij.lang.annotations.Subst {
    fun value(): java.lang.String;
}
automaton org.jetbrains.annotations.TestOnly : org.jetbrains.annotations.TestOnly {
}
automaton org.jetbrains.annotations.UnknownNullability : org.jetbrains.annotations.UnknownNullability {
    fun value(): java.lang.String;
}
automaton org.jetbrains.annotations.Unmodifiable : org.jetbrains.annotations.Unmodifiable {
}
automaton org.jetbrains.annotations.UnmodifiableView : org.jetbrains.annotations.UnmodifiableView {
}
automaton org.jetbrains.annotations.VisibleForTesting : org.jetbrains.annotations.VisibleForTesting {
}
automaton module-info : module-info {
}

