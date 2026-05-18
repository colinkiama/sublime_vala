// Source: https://docs.vala.dev/sample-code/

int[] arr;

void main () {
    string? nullable = null;
    int[] fixed_array = new int[10];
    int[,] matrix = new int[3, 4];
    string[] names = { "one", "two", "three" };

    nullable = names[0];
    names[1] = "updated";

    int[,] slice = matrix[0:2, 1:3];
    int[] resized = fixed_array[0:5];

    new string[10:uint8];
    new int[5];

    arr = new int[3];
    arr[0] = 1;
}
