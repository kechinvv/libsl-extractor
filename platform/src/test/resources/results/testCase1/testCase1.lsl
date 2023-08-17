libsl "1.0.0";
library testCase1;

import java.lsl;

type me.vldf.lsl.test.testCase1.A {
    model: java.lang.String;
    maxSpeed: int;
}

type me.vldf.lsl.test.testCase1.TestClass {
}

automaton me.vldf.lsl.test.testCase1.A (val arg0: java.lang.String, val arg1: int) : me.vldf.lsl.test.testCase1.A {
    val model: java.lang.String;
    val maxSpeed: int;
    constructor `constructor`(arg0: java.lang.String, arg1: int): void;
    
}
automaton me.vldf.lsl.test.testCase1.TestClass : me.vldf.lsl.test.testCase1.TestClass {
    constructor `constructor`(): void;
    
    fun foo(arg0: me.vldf.lsl.test.testCase1.A): me.vldf.lsl.test.testCase1.A;
}

