package me.vldf.lsl.test.testCase2;


public class B{
    A a;

    public B(A a) {
        this.a = a;
    }

    public void fun1(){
        a.fun4();
    }

    public void fun2(){
        a.fun3((byte) 1, (byte) 1, 'a', 'a', (short) 1, (short) 1, 1L, 1L, 1f, 1f, 1.1, 1.1);;
    }
}
