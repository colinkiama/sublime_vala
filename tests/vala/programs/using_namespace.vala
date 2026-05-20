using GLib;
using GLib.Math;

namespace MyApp {
    namespace Models {
        public class User : Object {
            public string name { get; set; }
        }
    }

    namespace Views {
        public void show (Models.User user) {
            stdout.printf ("  user: %s\n", user.name);
        }
    }

}

void main () {
    var user = new MyApp.Models.User () { name = "Vala" };
    MyApp.Views.show (user);

    assert (PI > 3.0);
    assert (Math.PI == PI);
    assert (user.name == "Vala");

    stdout.printf (
        "using ok: GLib + GLib.Math import, qualified namespaces, PI=%g, user=%s\n",
        PI,
        user.name
    );
}
