int main (string[] args) {
    var hash = new HashTable<string, string> (str_hash, str_equal);
    hash.insert ("1", "one");
    hash.insert ("2", "two");

    foreach (string key in hash.get_keys ()) {
        stdout.printf ("%s => %s\n", key, hash.lookup (key));
    }

    return 0;
}
