#!/bin/bash

GEN_FRAGMENT_PATH="Configuration/GenProduction/python/PYTHIA8_HYDJET_DiJet_5360GeV_genFragment.py"
OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.py"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root"
GLOBAL_TAG="140X_mcRun3_2024_realistic_v3"
BEAMSPOT="MatchHI"
ERA="Run3_pp_on_PbPb"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=100

# CMSSW release: CMSSW_14_0_0
cmsDriver.py $GEN_FRAGMENT_PATH \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --fileout file:$OUTPUT_FILE \
	     --mc \
	     --pileup HiMixGEN \
	     --pileup_input "dbs:/MB_TuneCP5_5p36TeV_ppref-pythia8_CMSSW_14_0_0-140X_mcRun3_2024_realistic_v3_GENSIM/phys_heavyions-ppRefMC_20240219_140X_MB_GEN_SIM-657d236c02e738e7f424d8f0e6db5784/USER instance=prod/phys03" \
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
	     











