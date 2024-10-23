#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/HYDJET_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="HYDJET_5360GeV_RAWDEBUG.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v8"
ERA="Run3_pp_on_PbPb_2024"
INPUT_FILE="HYDJET_5360GeV_GEN-SIM.root"
OUTPUT_FILE="HYDJET_5360GeV_RAWDEBUG.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

#CMSSW release: CMSSW_14_1_0_pre3
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMixNoPU \
	     --eventcontent FEVTDEBUGHLT \
	     --datatier GEN-SIM-DIGI-RAW-HLTDEBUG \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:@fake2 \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS




