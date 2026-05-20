void main () {
    string? nullable = null;
    int[] fixed_array = new int[10];
    int[,] matrix = new int[3, 4];
    string[] names = { "one", "two", "three" };

    nullable = names[0];
    names[1] = "updated";

    // One-dimensional slices only (see Vala docs: multidimensional arrays cannot be sliced)
    int[] slice = fixed_array[0:5];
    slice[0] = 7;

    matrix[1, 2] = 42;
    stdout.printf ("matrix %d x %d, [1,2] = %d\n",
        matrix.length[0], matrix.length[1], matrix[1, 2]);

    fixed_array.resize (12);

    int[] grown = {};
    grown += 10;
    grown += 20;

    string[] tags = new string[4:uint8];
    tags[0] = "a";

    int stack_buf[3];
    stack_buf[0] = 1;

    stdout.printf ("slice length %d, nullable %s, grown length %d\n",
        slice.length, nullable ?? "(null)", grown.length);
}
