// SYNTAX TEST "Vala.sublime-syntax"

/////////////////////////////////////////////////////////////////////
// LINE COMMENTS
/////////////////////////////////////////////////////////////////////

    // blah blah


/////////////////////////////////////////////////////////////////////
// BLOCK COMMENTS
/////////////////////////////////////////////////////////////////////

    /* sdfdsfsdf */
    /*

    thing

    */

/////////////////////////////////////////////////////////////////////
// DOC COMMENTS
/////////////////////////////////////////////////////////////////////

    /** basic doc comment */



    /** Include newlines<<BR>> */




    /** ''bold'' */






    /** //italic// */






    /** __underline__ */






    /** ``blockquote`` */






    /** ''//__bold italic underlined__//'' */










    /** ''force <<BR>>newline'' */






    /** inline {@link thing} */







    /** {@inheritDoc} */






    /**
     * ordered and unordered lists
     *
     *  1. numbered list
    
     *
     *  # numbered list
    
     *
     *  i. numbered list
    
     *
     *  I. numbered list
    
     *
     *  a. alphabetical list
    
     *
     *  A. alphabetical list
    
     *
     *  * doted list
    
     *
     *  A. alphabetical list
    
     *    a. alphabetical list
    
     */

    /**
     * Code blocks
     *
     * {{{

     *   static int main (string[] arg) {
     *      return 0;
     *   }
     * }}}

     *
     */

    /** [[http://google.at|google]] */






    /** [[http://google.at]] */





    /** {{/images/favicon.png}} */





    /** {{/images/favicon.png|alt-message}} */






    /**
     * Short description
     *
     * || ''headline'' || ''headline'' ||









     * || one cell || one cell ||



     *
     */

    /**
    * = headline 1 =



    * == healdline 2 ==



    * === healdline 3 ===



    * ==== healdline 4 ====



    */

    /** @deprecated v1.0.0 */




    /** @see other_section */





    /** @param name description */





    /** @since v1.1.1 */




    /** @return description */




    /** @throws type description */





/////////////////////////////////////////////////////////////////////
// PRIMITIVE TYPES
/////////////////////////////////////////////////////////////////////

    bool;

    char; uchar; short; ushort; int; uint; long;







    ulong; size_t; ssize_t; int8; uint8; int16;






    uint16; int32; uint32; int64; uint64; unichar;






    float; double;


    string;

    void;

/////////////////////////////////////////////////////////////////////
// LANGUAGE CONSTANTS
/////////////////////////////////////////////////////////////////////

    true; false; null;



/////////////////////////////////////////////////////////////////////
// INTEGERS
/////////////////////////////////////////////////////////////////////

    1; 523453245345; -67;




/////////////////////////////////////////////////////////////////////
// FLOATS
/////////////////////////////////////////////////////////////////////

    1.2; 3.1446346; 55555555.334;






/////////////////////////////////////////////////////////////////////
// STRINGS
/////////////////////////////////////////////////////////////////////

    "string"; "s1""s2";








    "\n \t \f \r \t \v \" \p";









    "

    ";
// <- invalid.illegal.vala
 // <- invalid.illegal.vala
  // <- invalid.illegal.vala



    """no escapes \n, \t, \\, etc"""



    """

    over

    multiple lines

    """;

/** Template strings. */

    @"template string"




/** Template strings allow embedded variables. */

    @"$a * $c = 7"












/** Template strings allow embedded expressions. */

    @"$a + $(a * b)"














/////////////////////////////////////////////////////////////////////
// OPERATORS
/////////////////////////////////////////////////////////////////////

    1 + 2; -3.4 - +5; 5++; --7;






    1*2; 4 / 5; 5 % 6.1;



    1 != 2; 3 == 4;


    1<3; 1<=4; 1>4; 4>=1;




    3 || 4; 4 && 4; !3;



    1|1; 1^1; 1&1; ~1; 1<<1; 1>>1;






    1 = 2; 1+=2; 1-=2; 1*=2; 1/=2; 1%=2;






    1|=2; 1&=2; 1^=2; 1<<=2: 1>>=2;





    1 == 2 ? 3 : 4; 4 ?? 3;




    global::thing;


    ((1 + 1) / 4 ?? 3);














    (owned) a; delete a;




   [ 1, 2, [ 3, 4 ]];



















    sizeof (int); typeof (Gtk.Something);








    var hello = thing is int; var other_thing = my_thing as Gtk.Thing;
















    new int[3,4]; new Person (); new Button.with_label ("click me");



















/////////////////////////////////////////////////////////////////////
// LAMBDAS
/////////////////////////////////////////////////////////////////////

    () => {};







/** Matches parameters and commas. */

    (a, b, c) => {};












/** Parameter direction keywords. */

    (out a, ref b, c) => {/*...*/};














/////////////////////////////////////////////////////////////////////
// MEMBER ACCESS
/////////////////////////////////////////////////////////////////////

    var other_thing_chain = thing.other_thing;







/** Allows chaining of member access. */

    var thing_chain = thing.m1.m2.m3;







/** Allows `this` keyword. */

    this.other_thing;



/** Works on any expressions. */

    ( some_thing ).something_else;






/** Pointer member access. */

    ptr->member;



/** Pointer access on any expression. */

    (*thing)->member;







/** Access via element indicies. */

    thing[2]; thing[1:2];












/////////////////////////////////////////////////////////////////////
// STATEMENTS
/////////////////////////////////////////////////////////////////////

/** Jump / flow statements. */

    break; continue; return; throw; yield;





/** Selection statements. */

if (x) {





    y ();
} else if (xy) {






    yy ();
} else {


    z ();
}

switch (x) {






    case 1:




        a ()
        break;



    default:



        b ();
}



/** While-loop statements. */

    do; while;


/** foreach statements. */

    foreach (int a in int_array) {/*....*/}










/** User-type foreach loop variables. */

    foreach (Json.Node item in obj.array) {/*...*/}












/** Ownership modifiers in forreach loops. */

    foreach (unowned string name in obj.members) {/*...*/}













/** Type inference in foreach initializer. */

    foreach (var init_expr in initializer) {/*...*/}










/** Variable definitions. */

    float percentile = 1.75; const double MU_BOHR = 927;









/** Local variable definitions. */

    var block = new Block (source_reference);









/** C-Style for loop. */

    for (int i = 0; i <= 255; i++) {/*...*/}

















/** C-Style for loop with user type. */

    for (File pos = file; pos != null; pos = pos.get_parent ()) {/***/}























/** Ownership modifiers in for loops. */

    for (owned int i = 0; i < 5; i++) {/*...*/}


















/////////////////////////////////////////////////////////////////////
// METHOD CALLS
/////////////////////////////////////////////////////////////////////

    something ();




    /* Expressions in parameters. */

    some (thing, 1 * global::else);










    /* Struct members. */

    t.method (); a.b.c.d ().e (); a. b ();



























    /* Pointer members. */

    t->method (); a->b->c->d ()->e (); a-> b ();



























/////////////////////////////////////////////////////////////////////
// METHODS
/////////////////////////////////////////////////////////////////////

    int method_name (int arg);







/** Handles access modifiers. */

    private void func ();





/** Handles nullable checks on return type. */

    public string? m ();






/** Handles fully-qualified names for methods. */

    void Gtk.draw_shape ();




/** Handles directional parameter qualifiers. */

    void thing (out int i, ref int j);












/** Handles nullable parameter types. */

    void? thing (ref string? s);










/** Handles user types for parameters. */

    void f (Gtk.Thing s, int i);










/** Handles user return types. */

    public Gtk.Thing? gg ();






/** Handles variable-length arguments. */

    void method_with_varargs (int x, ...);









/** Handles default values for parameters. */

    void f (int x, string s = "hello", double z = 0.5);

















/** Handles throws keyword and builtin types. */

    void f () throws int;






/** Handles throwing multiple errors. */

    void f () throws int, string;








/** Handles throwing user errors. */

    int f () throws Gtk.SomeErr, UserError;








/** Handles "requires" contract. */

    int f (int x) requires (x > 0 && x < 10);
















/** Handles multiple "requires" contracts. */

    int f (int x) requires (x > 0) requires (x < 10);


















/** Handles "ensures" contract. */

    int f (int x) ensures (x > 0 && x < 10);
















/** Handles multiple "ensures" contracts. */

    int f (int x) ensures (x > 0) ensures (x < 10);


















/** Putting it all together, over multiple lines. */

    double method_name (int x, double d, string s = "default") throws Gtk.SpecialError;






















        requires (x > 0 && x < 10)










        requires (d >= 0.0 && x == 5)






        ensures (result >= 0.0 && x == 5);







/////////////////////////////////////////////////////////////////////
// NAMESPACES
/////////////////////////////////////////////////////////////////////

/** Matches keywords and assigns meta scopes **/

    namespace Ns1 { /* c */ }






/** Allows nesting namespaces **/

    namespace Ns1 {




        namespace Ns2 { /* c */ }






    }


/** Allows subclass syntax instead of nesting blocks **/

    namespace Ns1.Ns2 { /* c */ }







/** Allows field declarations */

    namespace Ns1 {
        string s = "string";





        my_string a = "g";





        public int ns_int;




        private char c;




        string s2 = global::other_string;






        const string S = 3;






        public const Scratch.Widgets.HeaderBar S = 3;







    }

/////////////////////////////////////////////////////////////////////
// USING STATEMENT
/////////////////////////////////////////////////////////////////////

    using Gtk;



/** Allows a list in one statement, including namespace identifiers */

    using Gtk, Scratch.Services;




