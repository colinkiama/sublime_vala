// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

try
// <- keyword.control.exception.genie
    fn("home")
except ex : IOError
// <- keyword.control.exception.genie
    raise new IOError.FILE_NOT_FOUND ("msg")
    // <- keyword.control.exception.genie
