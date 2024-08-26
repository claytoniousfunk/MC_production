#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_RAWBEBUG.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v2"
ERA="Run3_pp_on_PbPb_2023"
INPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_RAWDEBUG.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=100

#CMSSW release: CMSSW_14_1_0_pre3
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMix \
	     --pileup_input "dbs:/Hydjet_Drum5F_CMSW_14_1_0_pre3_22May2024_v1/phys_heavyions-GEN_MC_Hydjet_Drum5F_CMSW_14_1_0_pre3_22May2024_v1-c1c381bf911200feb914e6f29e1be6f7/USER instance=prod/phys03" \
	     --eventcontent RAWDEBUG \
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

