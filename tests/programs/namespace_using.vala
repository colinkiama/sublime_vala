// Source: https://docs.vala.dev/sample-code/

namespace MyApp {
    namespace Models {
        public class User : Object {
            public string name { get; set; }
        }
    }

    namespace Views {
        public void show (Models.User user) {
            stdout.printf ("%s\n", user.name);
        }
    }
}

using MyApp.Models;
using static GLib.Math;

void main () {
    var user = new User () { name = "Vala" };
    MyApp.Views.show (user);
    stdout.printf ("pi = %g\n", PI);
}
