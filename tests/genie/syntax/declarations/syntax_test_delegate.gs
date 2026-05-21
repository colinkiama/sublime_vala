// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

delegate DelegateType(a:int)
// <- storage.type.delegate.genie
//       ^^^^^^^^^^^^ entity.name.function.delegate.genie
//                   ^ meta.delegate.genie punctuation.section.group.begin.genie
//                    ^ meta.delegate.genie
//                     ^ meta.delegate.genie
//                      ^^^ storage.type.genie
//                         ^ meta.delegate.genie

delegate DelegateType (a : int) : bool
// <- storage.type.delegate.genie
//       ^^^^^^^^^^^^ entity.name.function.delegate.genie
//                    ^ meta.delegate.genie punctuation.section.group.begin.genie
//                     ^ meta.delegate.genie
//                       ^ meta.delegate.genie
//                         ^^^ storage.type.genie
//                            ^ meta.delegate.genie
//                              ^ punctuation.separator.type.genie
//                                ^^^^ storage.type.genie
