#!/bin/bash

OUTPUT_EXECUTABLE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_RECO.py"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
ERA="Run2_2018_pp_on_AA"
INPUT_FILE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_RAW.root"
OUTPUT_FILE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_RECO.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=100

# CMSSW release: CMSSW_10_3_2
cmsDriver.py step2 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --mc \
	     --eventcontent AODSIM \
	     --datatier AODSIM \
	     --runUnscheduled \
	     --conditions $GLOBAL_TAG \
	     --step RAW2DIGI,L1Reco,RECO \
	     --era $ERA \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS 


	     
	     
