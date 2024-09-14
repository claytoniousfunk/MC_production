#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/PYTHIA8_HYDJET_DiJet_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.py"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root"
GLOBAL_TAG="130X_mcRun3_2023_realistic_HI_v18"
BEAMSPOT="MatchHI"
ERA="Run3_pp_on_PbPb"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=1

# CMSSW release: CMSSW_13_0_20_HeavyIon
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --fileout $OUTPUT_FILE \
	     --mc \
	     --pileup HiMixGEN \
	     --pileup_input "dbs:/MinBias_Drum5F_5p36TeV_hydjet/HINPbPbSpring23GS-130X_mcRun3_2023_realistic_HI_v18-v2/GEN-SIM instance=prod/phys03" \
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
	     











