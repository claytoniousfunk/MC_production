#!/bin/bash

OUTPUT_EXECUTABLE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_RAW.py"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
ERA="Run2_2018_pp_on_AA"
INPUT_FILE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_GEN-SIM.root"
OUTPUT_FILE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_RAW.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=100

#CMSSW release: CMSSW_10_3_2
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMix \
	     --pileup_input "dbs:/MinBias_Hydjet_Drum5F_2018_5p02TeV/HINPbPbAutumn18GS-103X_upgrade2018_realistic_HI_v11-v1/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM-RAW \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

