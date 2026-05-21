// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

interface Test
// <- storage.type.interface.genie
//        ^^^^ entity.name.type.interface.genie
enum Colors
// <- storage.type.enum.genie
//   ^^^^^^ entity.name.type.enum.genie
[Flags] enum Colors
// <- meta.attribute.genie
 // <- entity.other.attribute-name.genie
        // <- storage.type.enum.genie
//           ^^^^^^ entity.name.type.enum.genie
