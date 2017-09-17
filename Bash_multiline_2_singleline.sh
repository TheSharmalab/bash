#!/bin/bash
ROOT="~/Data_LHA/COMP/dti"

cat test.txt | xargs | sed -e 's/ /;/g' > output.txt   # uses ; as a separator

cat test.txt | xargs  # uses a space as a separator
