#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/PYTHIA8_HYDJET_DiJet_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.py"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root"
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v2"
BEAMSPOT="MatchHI"
ERA="Run3_pp_on_PbPb"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=10

# CMSSW release: CMSSW_14_1_0
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --fileout $OUTPUT_FILE \
	     --mc \
	     --pileup HiMixGEN \
	     --pileup_input "dbs:/Hydjet_Drum5F_CMSW_14_1_0_pre3_22May2024_v1/phys_heavyions-GEN_MC_Hydjet_Drum5F_CMSW_14_1_0_pre3_22May2024_v1-c1c381bf911200feb914e6f29e1be6f7/USER instance=prod/phys03" \
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
	     











