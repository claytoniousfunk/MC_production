#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_genFragment.py"
OUTPUT_EXECUTABLE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_GEN-SIM.py"
OUTPUT_FILE="promptD0_Pthat0_PT-0_TuneCP5_5p02TeV_pythia8-evtgen_GEN-SIM.root"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
BEAMSPOT="MatchHI"
ERA="Run2_2018_pp_on_AA"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=1000

# CMSSW release: CMSSW_10_3_2
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --fileout $OUTPUT_FILE \
	     --mc \
	     --pileup HiMixGEN \
	     --pileup_input "dbs:/MinBias_Hydjet_Drum5F_2018_5p02TeV/HINPbPbAutumn18GS-103X_upgrade2018_realistic_HI_v11-v1/GEN-SIM" \
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
	     











