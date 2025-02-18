libsl "1.0.0";
library controlflow;

import java.lsl;

type me.vldf.lsl.test.controlflow.A {
}

type me.vldf.lsl.test.controlflow.B {
    field: int;
    anotherB: me.vldf.lsl.test.controlflow.B;
}

type me.vldf.lsl.test.controlflow.ClassModifiedByInnerMethod {
    `state`: int;
}

automaton me.vldf.lsl.test.controlflow.A : me.vldf.lsl.test.controlflow.A {
    constructor `constructor`(): void;
    
    fun bar(arg0: me.vldf.lsl.test.controlflow.B): void {
        assigns arg0.field;
        assigns arg0.anotherB.field;
    }
    
    fun foo(): void;
    
    fun tar(arg0: int, arg1: me.vldf.lsl.test.controlflow.B): void {
        assigns arg1.field;
        assigns arg1.anotherB.field;
    }
}
automaton me.vldf.lsl.test.controlflow.B : me.vldf.lsl.test.controlflow.B {
    val field: int;
    val anotherB: me.vldf.lsl.test.controlflow.B;
    constructor `constructor`(): void;
    
}
automaton me.vldf.lsl.test.controlflow.ClassModifiedByInnerMethod : me.vldf.lsl.test.controlflow.ClassModifiedByInnerMethod {
    val `state`: int;
    constructor `constructor`(): void;
    
    fun implicitImpureMethod(): void {
        assigns state;
    }
    
    fun impureMethod(): void {
        assigns state;
    }
}

