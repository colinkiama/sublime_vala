// Numeric literal smoke test. Requires Vala 0.57+ (0b/0o integers, hexadecimal floats).
// Homebrew vala 0.56 compiles only the decimal/hex-integer/decimal-float sections below.
void main () {
    test_decimal_integers ();
    test_hex_integers ();
    test_binary_integers ();
    test_octal_integers ();
    test_decimal_floats ();
    test_hexadecimal_floats ();

    stdout.printf ("All number literal checks passed.\n");
}

void test_decimal_integers () {
    int dec = 42;
    assert (dec == 42);

    int zero = 0;
    assert (zero == 0);

    uint u = 100u;
    assert (u == 100u);

    long l = 1000L;
    assert (l == 1000L);

    int64 ll = 23LL;
    assert (ll == 23);

    ulong ul = 42UL;
    assert (ul == 42UL);

    uint64 ull = 18446744073709551615ULL;
    assert (ull == uint64.MAX);
}

void test_hex_integers () {
    int hex = 0xFF;
    assert (hex == 255);

    int64 hex64 = 0xdeadbeefLL;
    assert (hex64 == 0xdeadbeef);
}

void test_binary_integers () {
    int bin = 0b1010;
    assert (bin == 10);

    int64 bin64 = 0b11111010011LL;
    assert (bin64 == 2003);
}

void test_octal_integers () {
    int oct = 0o755;
    assert (oct == 493);

    int legacy_oct = 022;
    assert (legacy_oct == 18);
}

void test_decimal_floats () {
    float f = 23.42F;
    assert (f > 23.41f && f < 23.43f);

    double d = 47.11;
    assert (d > 47.10 && d < 47.12);

    double sci = 23.42e+12d;
    assert (sci > 2.3419e13 && sci < 2.3421e13);

    float sci2 = 47.11E-4f;
    assert (sci2 > 0.0047f && sci2 < 0.0048f);

    // Vala rejects 1.e10 (no digits after '.') — use 1.0e10
    double dot_exp = 1.0e10;
    assert (dot_exp == 10000000000.0);
}

void test_hexadecimal_floats () {
    float hex_f = 0x1.fP1F;
    assert (hex_f == 3.875f);

    double hex_d = 0x0.8P1;
    assert (hex_d == 1.0);

    double hex_exp = 0xab.cdp20;
    assert (hex_exp == 180146176.0);

    double hex_no_suffix = 0x47.11p9;
    assert (hex_no_suffix == 36386.0);
}
