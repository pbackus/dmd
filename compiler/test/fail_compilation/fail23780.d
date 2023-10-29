/+
TEST_OUTPUT:
---
fail_compilation/fail23780.d(16): Error: cannot access `__ctor` in `@safe` code
---
+/
struct S
{
    int n;
    @safe this(int n) immutable { this.n = n; }
}

@safe void fun()
{
    immutable S s;
    s.__ctor(123);
}
