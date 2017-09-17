#!/bin/bash
ROOT="~/Data_LHA/COMP/dti"

cat test.txt | xargs | sed -e 's/ /;/g' > output.txt  
