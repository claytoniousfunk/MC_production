#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/HYDJET_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="HYDJET_5360GeV_RAW.py"
GLOBAL_TAG="132X_mcRun3_2023_realistic_HI_v9"
ERA="Run3_pp_on_PbPb"
INPUT_FILE="HYDJET_5360GeV_GEN-SIM.root"
OUTPUT_FILE="HYDJET_5360GeV_RAW.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

#CMSSW release: CMSSW_13_2_10
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMixNoPU \
	     --eventcontent FEVTDEBUGHLT \
	     --datatier GEN-SIM-DIGI-RAW-HLTDEBUG \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS




