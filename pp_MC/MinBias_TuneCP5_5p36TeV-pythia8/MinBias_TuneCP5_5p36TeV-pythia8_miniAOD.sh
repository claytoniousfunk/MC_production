#!/bin/bash

OUTPUT_EXECUTABLE="MinBias_TuneCP5_5p36TeV-pythia8_miniAOD.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_ppRef5TeV_v7"
ERA="Run3_2024_ppRef"
INPUT_FILE="MinBias_TuneCP5_5p36TeV-pythia8_RECO.root"
OUTPUT_FILE="MinBias_TuneCP5_5p36TeV-pythia8_miniAOD.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

# CMSSW release: CMSSW_14_1_9
cmsDriver.py \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --mc \
	     --eventcontent MINIAODSIM \
	     --datatier MINIAODSIM \
	     --geometry DB:Extended \
	     --conditions $GLOBAL_TAG \
	     --step PAT \
	     --era $ERA \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS 
