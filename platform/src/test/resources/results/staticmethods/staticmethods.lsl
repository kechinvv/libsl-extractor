libsl "1.0.0";
library staticmethods;

import java.lsl;

type me.vldf.lsl.test.staticmethods.A {
    stateField: int;
}

automaton me.vldf.lsl.test.staticmethods.A : me.vldf.lsl.test.staticmethods.A {
    val stateField: int;
    constructor `constructor`(): void;
    
    fun bar(): void {
        assigns stateField;
    }
    
    fun foo(): void {
        assigns stateField;
    }
    
    fun `static-constructor`(): void {
        assigns stateField;
    }
}

