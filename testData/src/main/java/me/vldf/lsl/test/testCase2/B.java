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
        a.fun3();
    }
}
