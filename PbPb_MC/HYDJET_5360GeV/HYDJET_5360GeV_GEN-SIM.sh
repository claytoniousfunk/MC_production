#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/HYDJET_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="HYDJET_5360GeV_GEN-SIM.py"
OUTPUT_FILE="HYDJET_5360GeV_GEN-SIM.root"
GLOBAL_TAG="130X_mcRun3_2023_realistic_HI_v18"
BEAMSPOT="Realistic2023PbPbCollision"
ERA="Run3_pp_on_PbPb"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=10

# CMSSW release: CMSSW_13_0_20_HeavyIon
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
	     


















