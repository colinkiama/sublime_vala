using MyApp.Models;
using static GLib.Math;

void main () {
    var user = new User () { name = "Vala" };
    MyApp.Views.show (user);
    stdout.printf ("pi = %g\n", PI);
}
