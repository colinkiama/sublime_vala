void main () {
    int x = 10;

    if (x > 0) {
        stdout.printf ("positive\n");
    } else if (x < 0) {
        stdout.printf ("negative\n");
    } else {
        stdout.printf ("zero\n");
    }

    switch (x) {
        case 0:
            break;
        case 10:
            stdout.printf ("ten\n");
            break;
        default:
            stdout.printf ("other\n");
            break;
    }

    switch (x) {
        case 5:
            stdout.printf ("large\n");
            break;
        default:
            break;
    }

    for (int i = 0; i < 3; i++) {
        if (i == 1) {
            continue;
        }
        if (i == 2) {
            break;
        }
    }

    return;
}
