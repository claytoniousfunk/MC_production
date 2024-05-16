#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5020GeV_RAW.py"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
ERA="Run2_2018_pp_on_AA"
INPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_GEN-SIM/PYTHIA8_HYDJET_DiJet_5020GeV_GEN-SIM.root"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RAW/PYTHIA8_HYDJET_DiJet_5020GeV_RAW.root"
NUMBER_OF_THREADS=8
NUMBER_OF_EVENTS=10000

#CMSSW release: CMSSW_10_3_2
cmsDriver.py step1 \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --mc \
	     --pileup HiMix \
	     --pileup_input "dbs:/MinBias_Hydjet_Drum5F_2018_5p02TeV/HINPbPbAutumn18GS-103X_upgrade2018_realistic_HI_v11-v1/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM-RAW \
	     --conditions $GLOBAL_TAG \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

