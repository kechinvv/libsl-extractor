package me.vldf.lsl.test.testCase2;

public class A {
    Integer count;

    public static void main(String[] args) {
        A a = new A();
        a.fun1();
        a.fun2(new B(new A()), "");
        a.fun3((byte) 1, (byte) 1, 'a', 'a', (short) 1, (short) 1, 1L, 1L, 1f, 1f, 1.1, 1.1);
        a.fun4();
    }

    public void fun1() {
        return;
    }

    public int fun2(B b, String s) {
        return 2;
    }

    public int fun3(byte a, Byte b2, Character c, char c1, Short s, short s1, Long l1, long l, Float f, float f1, Double d, double d1) {
        return fun2(new B(new A()), "");
    }

    public int fun3(byte a) {
        return fun2(new B(new A()), "");
    }

    public String fun4() {
        fun1();
        return "";
    }
}
