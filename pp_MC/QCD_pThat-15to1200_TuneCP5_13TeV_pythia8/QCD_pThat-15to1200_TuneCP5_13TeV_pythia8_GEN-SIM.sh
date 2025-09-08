#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_genFragment.py"
GEN_CONFIG="QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_GEN-SIM.py"
OUTPUT_FILE="QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_GEN-SIM.root"
GLOBAL_TAG="141X_mcRun3_2024_realistic_ppRef5TeV_v7"
BEAMSPOT="DBrealistic"
NUMBER_OF_THREADS=1
ERA="Run3_2024_ppRef"
NUMBER_OF_EVENTS=10

# STEP 1: GEN-SIM
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $GEN_CONFIG \
	     --fileout file:$OUTPUT_FILE \
	     --step GEN,SIM \
	     --datatier GEN-SIM \
	     --eventcontent RAWSIM \
	     --mc \
	     --conditions $GLOBAL_TAG \
	     --beamspot $BEAMSPOT \
	     --nThreads $NUMBER_OF_THREADS \
	     --geometry DB:Extended \
	     --era $ERA \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

