-- biolib2d-1.0-1.rockspec
package = "biolib2d"
version = "1.0-1"
source = {
   url = "git://github.com/aptitudetechnology/BioLib2D",
   tag = "v1.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      biolib2d = "init.lua"
   }
}