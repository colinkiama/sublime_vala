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

void main () {
    var user = new MyApp.Models.User () { name = "Vala" };
    MyApp.Views.show (user);
}
