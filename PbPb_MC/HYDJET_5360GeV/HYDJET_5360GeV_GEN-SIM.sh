#!/bin/bash

# general info
GEN_FRAGMENT_PATH="Configuration/GenProduction/python/HYDJET_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="HYDJET_5360GeV_GEN-SIM.py"
OUTPUT_FILE="HYDJET_5360GeV_GEN-SIM.root"
# detector configurations
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v8"
BEAMSPOT="DBrealistic"
ERA="Run3_pp_on_PbPb_2024"
# number of events
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=10

# CMSSW release: CMSSW_14_1_0
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --fileout file:$OUTPUT_FILE \
	     --mc \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM \
	     --conditions $GLOBAL_TAG \
	     --beamspot $BEAMSPOT \
	     --step GEN,SIM \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era  $ERA\
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
	     


















