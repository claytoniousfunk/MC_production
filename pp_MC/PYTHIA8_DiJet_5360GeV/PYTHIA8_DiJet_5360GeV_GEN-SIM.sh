#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/PYTHIA8_DiJet_5360GeV_genFragment.py"
GEN_CONFIG="PYTHIA8_DiJet_5360GeV_GEN.py"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_GEN-SIM/PYTHIA8_DiJet_5360GeV_GEN.root"
GLOBAL_TAG="140X_mcRun3_2024_realistic_v3"
BEAMSPOT="Realistic25ns13p6TeVEarly2023Collision"
NUMBER_OF_THREADS=8
ERA="Run3"
NUMBER_OF_EVENTS=10000

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
