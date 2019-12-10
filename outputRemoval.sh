#!/bin/sh

WorkDir=/path/to/dataDirectory

#cleans out all results of pipeline_example except for dcm2niix outputs
for SUB in 001 002 003 004 005
do
	cd ${WorkDir}/${SUB}/Analyze/unbiased
	rm ./*
	cd ${WorkDir}/${SUB}/Analyze/bet_notunbiased
	rm ./*
	cd ${WorkDir}/${SUB}/Analyze/lesions_no2fast
	rm ./*
	cd ${WorkDir}/${SUB}/Analyze/bet_multispectral
	rm ./*
	cd ${WorkDir}/${SUB}/Analyze/sienax_no2fast
	rm ./*
done
