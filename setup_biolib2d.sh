#!/bin/bash

echo "Creating BioLib2D directory structure..."

mkdir -p BioLib2D/src
mkdir -p BioLib2D/src/components
mkdir -p BioLib2D/src/utils
mkdir -p BioLib2D/assets/images
mkdir -p BioLib2D/assets/fonts
mkdir -p BioLib2D/data
mkdir -p BioLib2D/exports

# Core files
touch BioLib2D/main.lua
touch BioLib2D/conf.lua

# Library entry point
touch BioLib2D/src/BioLib2D.lua

# Components
touch BioLib2D/src/components/BioXenConnector.lua
touch BioLib2D/src/components/VMCell.lua
touch BioLib2D/src/components/ATPSystem.lua
touch BioLib2D/src/components/GeneticCircuit.lua

# Utility modules
touch BioLib2D/src/utils/export.lua
touch BioLib2D/src/utils/colors.lua

# Example data file
touch BioLib2D/data/bioxen_visualization_data.json

echo "Directory and files created successfully."

