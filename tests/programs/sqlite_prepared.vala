// Source: https://docs.vala.dev/sample-code/databases/sqlite-sample.html

using GLib;
using Sqlite;

int main (string[] args) {
    Database db;
    Statement stmt;
    int rc;
    int col, cols;

    if (args.length != 3) {
        stderr.printf ("Usage: %s DATABASE SQL-STATEMENT\n", args[0]);
        return 1;
    }

    rc = Database.open (args[1], out db);
    if (rc != Sqlite.OK) {
        stderr.printf ("Can't open database: %d, %s\n", rc, db.errmsg ());
        return 1;
    }

    rc = db.prepare_v2 (args[2], -1, out stmt, null);
    if (rc != Sqlite.OK) {
        stderr.printf ("SQL error: %d, %s\n", rc, db.errmsg ());
        return 1;
    }

    cols = stmt.column_count ();
    do {
        rc = stmt.step ();
        switch (rc) {
        case Sqlite.DONE:
            break;
        case Sqlite.ROW:
            for (col = 0; col < cols; col++) {
                string txt = stmt.column_text (col);
                stdout.printf ("%s = %s\n", stmt.column_name (col), txt);
            }
            break;
        default:
            stderr.printf ("Error: %d, %s\n", rc, db.errmsg ());
            break;
        }
    } while (rc == Sqlite.ROW);

    return 0;
}
