#!/bin/bash

ROOT="~/Scratch/shared/struc_354"

cd $ROOT

ls -l | grep -v ^l | wc -l # that's an "L" not a "1" this time, we want a "long" listing here