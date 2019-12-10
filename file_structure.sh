#!/bin/sh

#Usage: Creates required directory structure for each subject in a list
#Author: Paul B Camacho <pcamach2@illinois.edu>

#run from subjects directory
for SUB in 001 002 003 004 005
do
        mkdir ./${SUB}/Analyze/unbiased
        mkdir ./${SUB}/Analyze/bet_notunbiased
        mkdir ./${SUB}/Analyze/lesions_no2fast
        mkdir ./${SUB}/Analyze/bet_multispectral
        mkdir ./${SUB}/Analyze/sienax_no2fast
done
