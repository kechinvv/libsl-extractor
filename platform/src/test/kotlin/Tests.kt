import org.junit.jupiter.api.Test

class Tests {
    @Test
    fun testCase1() {
        TestPlatform.runForLib("testCase1")
    }

    @Test
    fun testCase2() {
        TestPlatform.runForLib("testCase2")
    }

    @Test
    fun enums() {
        TestPlatform.runForLib("enums")
    }

    @Test
    fun argAnnotations() {
        TestPlatform.runForLib("argAnnotations")
    }

    @Test
    fun controlflow() {
        TestPlatform.runForLib("controlflow")
    }

    @Test
    fun recursion() {
        TestPlatform.runForLib("recursion")
    }

    @Test
    fun okHttpTest() {
        TestPlatform.runForLib("okhttp")
    }

    @Test
    fun virtualMethodsTest() {
        TestPlatform.runForLib("virtualmethods")
    }

    @Test
    fun staticMethodsTest() {
        TestPlatform.runForLib("staticmethods")
    }

    @Test
    fun phiTest() {
        TestPlatform.runForLib("phistatement")
    }

    @Test
    fun staticFieldsTest() {
        TestPlatform.runForLib("staticfields")
    }

    @Test
    fun staticMethodsAndFieldsTest() {
        TestPlatform.runForLib("staticMethodsAndFields")
    }

    @Test
    fun virtualMethodsBasicTest() {
        TestPlatform.runForLib("virtualMethodsBasic")
    }

    @Test
    fun snakeyamlTest() {
        TestPlatform.runForLib("snakeyaml")
    }
}
