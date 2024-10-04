#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/MuJet_pThat-15_pT-2_TuneCP5_5p36TeV_pythia8-evtgen_genFragment.py"
GEN_CONFIG="MuJet_pThat-15_pT-2_TuneCP5_5p36TeV_pythia8-evtgen_GEN-SIM.py"
OUTPUT_FILE="MuJet_pThat-15_pT-2_TuneCP5_5p36TeV_pythia8-evtgen_GEN-SIM.root"
GLOBAL_TAG="141X_mcRun3_2024_realistic_ppRef5TeV_v4"
BEAMSPOT="Realistic25ns13p6TeVEarly2023Collision"
ERA="Run3"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=1000

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
