libsl "1.0.0";
library virtualmethods;

import java.lsl;

type me.vldf.lsl.test.virtualmethods.Data {
    stateField: int;
}

type me.vldf.lsl.test.virtualmethods.InheritorA {
}

type me.vldf.lsl.test.virtualmethods.InheritorB {
}

type me.vldf.lsl.test.virtualmethods.Interface {
}

type me.vldf.lsl.test.virtualmethods.InvokeInterface {
}

type me.vldf.lsl.test.virtualmethods.InvokeVirtual {
}

automaton me.vldf.lsl.test.virtualmethods.Data : me.vldf.lsl.test.virtualmethods.Data {
    val stateField: int;
    constructor `constructor`(): void;
    
}
automaton me.vldf.lsl.test.virtualmethods.InheritorA : me.vldf.lsl.test.virtualmethods.InheritorA {
    constructor `constructor`(): void;
    
    fun foo(arg0: me.vldf.lsl.test.virtualmethods.Data): void;
}
automaton me.vldf.lsl.test.virtualmethods.InheritorB : me.vldf.lsl.test.virtualmethods.InheritorB {
    constructor `constructor`(): void;
    
    fun foo(arg0: me.vldf.lsl.test.virtualmethods.Data): void {
        assigns arg0.stateField;
    }
}
automaton me.vldf.lsl.test.virtualmethods.Interface : me.vldf.lsl.test.virtualmethods.Interface {
    fun foo(arg0: me.vldf.lsl.test.virtualmethods.Data): void;
}
automaton me.vldf.lsl.test.virtualmethods.InvokeInterface : me.vldf.lsl.test.virtualmethods.InvokeInterface {
    constructor `constructor`(): void;
    
    fun test(arg0: me.vldf.lsl.test.virtualmethods.Data): void {
        assigns arg0.stateField;
    }
}
automaton me.vldf.lsl.test.virtualmethods.InvokeVirtual : me.vldf.lsl.test.virtualmethods.InvokeVirtual {
    constructor `constructor`(): void;
    
    fun test(arg0: me.vldf.lsl.test.virtualmethods.Data): void {
        assigns arg0.stateField;
    }
}

