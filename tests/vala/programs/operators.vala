void main () {
    int a = 1, b = 2;
    bool flag = true;

    a += 1;
    a -= 1;
    a *= 2;
    a /= 2;
    a %= 2;
    a <<= 1;
    a >>= 1;
    a &= 0xff;
    a |= 0x01;
    a ^= 0x0f;

    bool c = a == b;
    bool d = a != b;
    bool e = a < b && a > 0;
    bool f = a <= b || a >= 0;
    bool g = flag && !flag;
    bool h = a ?? b;

    int sum = a + b - a * b / a % b;
    int bits = a & b | a ^ b;
    int shift = a << 2 >> 1;

    a++;
    ++a;
    a--;
    --a;
    ~a;
    -a;
    +a;

    bool? ternary = flag ? a : b;
    a = flag ? 1 : 0;

    () => a + b;
}
