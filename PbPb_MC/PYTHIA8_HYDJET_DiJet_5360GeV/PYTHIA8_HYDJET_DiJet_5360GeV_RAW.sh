#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_RAW.py"
GLOBAL_TAG="140X_mcRun3_2024_realistic_v3"
ERA="Run3_pp_on_PbPb_2023"
INPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_RAW.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=100

#CMSSW release: CMSSW_13_2_10
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMix \
	     --pileup_input "dbs:/MB_TuneCP5_5p36TeV_ppref-pythia8_CMSSW_14_0_0-140X_mcRun3_2024_realistic_v3_GENSIM/phys_heavyions-ppRefMC_20240219_140X_MB_GEN_SIM-657d236c02e738e7f424d8f0e6db5784/USER instance=prod/phys03" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM-DIGI-RAW \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

