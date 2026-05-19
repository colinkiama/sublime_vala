void main () {

#if ( FOOBAR || FOO || BAR ) && (FOOBAR == FOO && FOO == BAR)
    message ("FOOBAR == FOO == BAR");
#endif

#if ! NOFOO && (FOOBAR || (FOO && BAR))
    message ("FOOBAR");
#elif FOO && ! NOFOO
    message ("FOO");
#elif BAR && ! NOFOO
    message ("BAR");
#elif NOFOO
#if FOOBAR || (FOO && BAR)
    message ("NOFOO FOOBAR");
#else
    message ("NOFOO");
#endif
#else
    message ("Nothing relevant defined");
#endif

}
