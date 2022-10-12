#!/bin/bash
switch=./input/lucCage.pdb 
name="BOT"
protocol=./lucCageBot_GraftSwitchMover.xml
rosetta=/Users/svetlanamilrud/Desktop/Sveta/Rosetta/rosetta/main/source/bin/rosetta_scripts.static.macosclangrelease 
output=./BOT

$rosetta -s $switch -in:file:native $switch -beta -parser:protocol $protocol -overwrite -out::prefix ${name}_ -script_vars sequence=${seq} important_residues=${important_residues} -in::file::fullatom -out:path:all $output
