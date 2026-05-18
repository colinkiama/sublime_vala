// Source: https://docs.vala.dev/sample-code/language-features-and-introductory-samples/basic-samples.html

void main () {
    try {
        Process.spawn_command_line_async ("ls");

        Process.spawn_command_line_sync ("ls");

        string standard_output, standard_error;
        int exit_status;
        Process.spawn_command_line_sync ("ls", out standard_output,
                                               out standard_error,
                                               out exit_status);
    } catch (SpawnError e) {
        stderr.printf ("%s\n", e.message);
    }
}
