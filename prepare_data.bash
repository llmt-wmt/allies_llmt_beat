#! /bin/bash

cd data

# EN-FR
cat en-fr.tgz.part* > en-fr.tgz
tar xzvf en-fr.tgz

# EN-DE
cat en-de.tgz.part* > en-de.tgz
tar xzvf en-de.tgz

cd ..
