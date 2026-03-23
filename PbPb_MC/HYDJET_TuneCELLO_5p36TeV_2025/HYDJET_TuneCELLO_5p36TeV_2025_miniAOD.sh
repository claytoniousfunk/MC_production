#!/bin/bash

OUTPUT_EXECUTABLE="_miniAOD.py"
GLOBAL_TAG="151X_mcRun3_2025_realistic_HI_v4"
ERA="Run3_pp_on_PbPb_2025"
INPUT_FILE="HYDJET_TuneCELLO_5p36TeV_2025_RECO.root"
OUTPUT_FILE="HYDJET_TuneCELLO_5p36TeV_2025_miniAOD.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

# CMSSW release: CMSSW_15_1_1
cmsDriver.py --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent MINIAODSIM \
	     --datatier MINIAODSIM \
	     --conditions $GLOBAL_TAG \
	     --step PAT \
	     --procModifiers genJetSubEvent \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
