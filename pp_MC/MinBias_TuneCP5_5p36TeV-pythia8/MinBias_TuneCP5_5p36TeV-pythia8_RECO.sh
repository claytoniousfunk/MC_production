#!/bin/bash

OUTPUT_EXECUTABLE="MinBias_TuneCP5_5p36TeV-pythia8_RECO.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_ppRef5TeV_v7"
ERA="Run3_2024_ppRef"
INPUT_FILE="MinBias_TuneCP5_5p36TeV-pythia8_RAW.root"
OUTPUT_FILE="MinBias_TuneCP5_5p36TeV-pythia8_RECO.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

# CMSSW release: CMSSW_14_1_9
cmsDriver.py step2 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --mc \
	     --eventcontent RECODEBUG \
	     --datatier RECODEBUG \
	     --geometry DB:Extended \
	     --conditions $GLOBAL_TAG \
	     --step RAW2DIGI,L1Reco,RECO,RECOSIM \
	     --era $ERA \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS 


	     
