#!/bin/bash

OUTPUT_EXECUTABLE="QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_RAW_noPU.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_ppRef5TeV_v7"
ERA="Run3_2024_ppRef"
INPUT_FILE="QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_GEN-SIM.root"
OUTPUT_FILE="QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_RAW_noPU.root"
PILEUP="NoPileUp"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

#CMSSW release: CMSSW_14_1_9
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup $PILEUP \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM-DIGI-RAW-HLTDEBUG \
	     --conditions $GLOBAL_TAG \
	     --step DIGI,L1,DIGI2RAW,HLT:PRef \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS



