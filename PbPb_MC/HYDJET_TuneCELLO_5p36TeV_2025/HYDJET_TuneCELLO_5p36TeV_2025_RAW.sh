#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/HYDJET_TuneCELLO_5p36TeV_2025_genFragment.py"
OUTPUT_EXECUTABLE="HYDJET_TuneCELLO_5p36TeV_2025_RAW.py"
GLOBAL_TAG="151X_mcRun3_2025_realistic_HI_v4"
ERA="Run3_pp_on_PbPb_2025"
INPUT_FILE="HYDJET_TuneCELLO_5p36TeV_2025_GEN-SIM.root"
OUTPUT_FILE="HYDJET_TuneCELLO_5p36TeV_2025_RAW.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

#CMSSW release: CMSSW_15_1_1
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMixNoPU \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM-DIGI-RAW \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS




