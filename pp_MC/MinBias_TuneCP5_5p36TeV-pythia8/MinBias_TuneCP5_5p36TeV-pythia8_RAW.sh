#!/bin/bash

OUTPUT_EXECUTABLE="MinBias_TuneCP5_5p36TeV-pythia8_RAW.py"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
ERA="Run2_2018_pp_on_AA"
INPUT_FILE="PYTHIA8_HYDJET_DiJet_5020GeV_GEN-SIM.root"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5020GeV_RAW.root"
PILEUP="2024_RunIIIpp5p36Winter24_PoissonOOTPU"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

#CMSSW release: CMSSW_10_3_2
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup $PILEUP \
	     --pileup_input "dbs:/MinBias_TuneCP5_5p36TeV-pythia8/RunIIIpp5p36Winter24GS-141X_mcRun3_2024_realistic_ppRef5TeV_v7-v1/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM-DIGI-RAW-HLTDEBUG \
	     --conditions $GLOBAL_TAG \
	     --step DIGI,L1,DIGI2RAW,HLT:PRef \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS



