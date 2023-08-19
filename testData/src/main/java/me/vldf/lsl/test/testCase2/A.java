package me.vldf.lsl.test.testCase2;

public class A {
    Integer count;

    public void fun1(){
        return;
    }

    public int fun2(){
        return 2;
    }

    public int fun3(){
        return fun2();
    }

    public String fun4(){
        fun1();
        return "";
    }
}
