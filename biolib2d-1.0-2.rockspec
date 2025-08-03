package = "biolib2d"
version = "1.0-2"
source = {
   url = "git://github.com/aptitudetechnology/BioLib2D",
   tag = "v1.0.2"
}
description = {
   summary = "Love2D-based visualization library for cellular, genetic, and protein processes",
   detailed = "BioLib2D is a Love2D-based visualization library specifically designed for rendering cellular, genetic, and protein processes using real-time data from BioXen virtual machines.",
   homepage = "https://github.com/aptitudetechnology/BioLib2D",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      biolib2d = "libs/biolib2d/init.lua",
      ["biolib2d.main"] = "libs/biolib2d/main.lua",
      ["biolib2d.conf"] = "libs/biolib2d/conf.lua",
      ["biolib2d.core"] = "libs/biolib2d/src/BioLib2D.lua",
      ["biolib2d.components.ATPSystem"] = "libs/biolib2d/src/components/ATPSystem.lua",
      ["biolib2d.components.VMCell"] = "libs/biolib2d/src/components/VMCell.lua",
      ["biolib2d.components.BioXenConnector"] = "libs/biolib2d/src/components/BioXenConnector.lua",
      ["biolib2d.components.GeneticCircuit"] = "libs/biolib2d/src/components/GeneticCircuit.lua",
      ["biolib2d.utils.export"] = "libs/biolib2d/src/utils/export.lua",
      ["biolib2d.utils.colors"] = "libs/biolib2d/src/utils/colors.lua"
   }
}
