public delegate int BinaryIntFunc (int a, int b);

int apply (BinaryIntFunc op, int a, int b) {
    return op (a, b);
}

void main () {
    int a = 10;
    int b = 3;
    bool flag = true;

    a += 1;
    assert (a == 11);
    a -= 1;
    assert (a == 10);
    a *= 2;
    assert (a == 20);
    a /= 2;
    assert (a == 10);
    a %= 3;
    assert (a == 1);
    a = 8;
    a <<= 1;
    assert (a == 16);
    a >>= 1;
    assert (a == 8);
    a &= 0xff;
    a |= 0x01;
    a ^= 0x0f;
    assert (a == 6);

    assert (a == b + 3);
    assert (a != b);
    assert (a < b + 10 && a > 0);
    assert (a <= b + 10 || a >= 0);
    assert (flag && !flag == false);

    int? missing = null;
    int from_null = missing ?? 99;
    assert (from_null == 99);

    int sum = a + b - a * b / b % b;
    int bits = (a & b) | (a ^ b);
    int shift = (a << 2) >> 1;
    assert (sum == 9);
    assert (bits == 7);
    assert (shift == 12);

    a = 5;
    a++;
    assert (a == 6);
    ++a;
    assert (a == 7);
    a--;
    assert (a == 6);
    --a;
    assert (a == 5);

    int inverted = ~a;
    int negated = -a;
    int plus = +a;
    assert (inverted == -6);
    assert (negated == -5);
    assert (plus == 5);

    bool ternary = flag ? true : false;
    a = flag ? 1 : 0;
    assert (ternary);
    assert (a == 1);

    int via_lambda = apply ((x, y) => x + y, 20, 22);
    assert (via_lambda == 42);

    stdout.printf (
        "operators ok: a=%d bits=%d shift=%d lambda=%d null-coalesce=%d\n",
        a, bits, shift, via_lambda, from_null);
}
