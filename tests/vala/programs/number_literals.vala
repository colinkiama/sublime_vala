void main () {
    // decimal integers
    int dec = 42;
    int zero = 0;
    uint u = 100u;
    long l = 1000L;
    long ll = 23LL;
    ulong ul = 42UL;
    uint64 ull = 18446744073709551615ULL;

    // hexadecimal integers
    int hex = 0xFF;
    int64 hex64 = 0xdeadbeefLL;

    // binary integers
    int bin = 0b1010;
    int64 bin64 = 0b11111010011LL;

    // octal integers (0o prefix and legacy 0-prefix)
    int oct = 0o755;
    int legacy_oct = 022;

    // decimal floating-point
    float f = 23.42F;
    double d = 47.11;
    double sci = 23.42e+12d;
    float sci2 = 47.11E-4f;
    double dot_exp = 1.e10;

    // hexadecimal floating-point (requires p exponent)
    float hex_f = 0x1.fP1F;
    double hex_d = 0x0.8P1;
    double hex_exp = 0xab.cdp20;
    var hex_no_suffix = 0x47.11p9;
}
