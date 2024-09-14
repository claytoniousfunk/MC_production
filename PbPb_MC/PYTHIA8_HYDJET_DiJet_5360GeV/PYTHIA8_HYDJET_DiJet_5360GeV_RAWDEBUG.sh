#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_RAWDEBUG.py"
GLOBAL_TAG="132X_mcRun3_2023_realistic_HI_v9"
ERA="Run3_pp_on_PbPb_2023"
INPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/test/2023_PbPb/PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/test/2023_PbPb/PYTHIA8_HYDJET_DiJet_5360GeV_RAWDEBUG.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=10

#CMSSW release: CMSSW_13_2_10
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMix \
	     --pileup_input "dbs:/MinBias_Drum5F_5p36TeV_hydjet/HINPbPbSpring23GS-130X_mcRun3_2023_realistic_HI_v18-v2/GEN-SIM instance=prod/phys03" \
	     --eventcontent FEVTDEBUGHLT \
	     --datatier GEN-SIM-DIGI-RAW-HLTDEBUG \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

