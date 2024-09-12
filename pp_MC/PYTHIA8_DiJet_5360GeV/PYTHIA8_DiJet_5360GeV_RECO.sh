#!/bin/bash

INPUT_FILE="PYTHIA8_DiJet_5360GeV_RAW.root"
RECO_CONFIG="PYTHIA8_DiJet_5360GeV_RECO.py"
OUTPUT_FILE="PYTHIA8_DiJet_5360GeV_RECO.root"
GLOBAL_TAG="140X_mcRun3_2024_realistic_v3"
NUMBER_OF_THREADS=1
ERA="Run3"
NUMBER_OF_EVENTS=10

# STEP 3: RECO (MiniAOD)
cmsDriver.py --filein file:$INPUT_FILE \
	     --python_filename $RECO_CONFIG \
	     --fileout file:$OUTPUT_FILE \
	     --step RAW2DIGI,L1Reco,RECO,RECOSIM,PAT \
	     --datatier MINIAODSIM \
	     --eventcontent MINIAODSIM\
	     --mc \
	     --conditions $GLOBAL_TAG \
	     --nThreads $NUMBER_OF_THREADS \
	     --geometry DB:Extended \
	     --era $ERA \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
