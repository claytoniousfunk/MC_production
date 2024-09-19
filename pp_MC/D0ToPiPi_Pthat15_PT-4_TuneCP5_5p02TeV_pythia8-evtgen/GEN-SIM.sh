#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/Pythia8_d0_fragment_PiPi.py"
GEN_CONFIG="Pythia8_d0_PiPi_GEN-SIM.py"
OUTPUT_FILE="Pythia8_d0_PiPi_GEN-SIM.root"
GLOBAL_TAG="94X_mc2017_realistic_forppRef5TeV"
BEAMSPOT="Realistic25ns13TeVEarly2017Collision"
NUMBER_OF_THREADS=1
ERA="Run2_2017_ppRef"
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
