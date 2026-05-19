public class MathUtil {
    public static inline int abs (int x) {
        return x < 0 ? -x : x;
    }

    public inline int clamp (int value, int min, int max) {
        if (value < min) return min;
        if (value > max) return max;
        return value;
    }
}

void main () {
    stdout.printf ("%d\n", MathUtil.abs (-5));
    stdout.printf ("%d\n", MathUtil.clamp (15, 0, 10));
}
