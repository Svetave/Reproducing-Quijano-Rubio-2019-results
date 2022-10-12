#!/bin/bash
switch=./input/lucCage.pdb 
name="sensing_domain_name"
protocol=./lucCageRBD_MergePDB_relax.xml
rosetta=/Users/svetlanamilrud/Desktop/Sveta/Rosetta/rosetta/main/source/bin/rosetta_scripts.static.macosclangrelease 
output=./output

$rosetta -s $switch -in:file:native $switch -beta -parser:protocol $protocol -overwrite -out::prefix ${name}_ -script_vars sequence=${seq} important_residues=${important_residues} -in::file::fullatom -out:path:all $output
