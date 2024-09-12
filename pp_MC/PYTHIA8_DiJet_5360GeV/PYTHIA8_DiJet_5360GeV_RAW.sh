#!/bin/bash

INPUT_FILE="PYTHIA8_DiJet_5360GeV_GEN-SIM.root"
RAW_CONFIG="PYTHIA8_DiJet_5360GeV_RAW.py"
OUTPUT_FILE="PYTHIA8_DiJet_5360GeV_RAW.root"
GLOBAL_TAG="140X_mcRun3_2024_realistic_v3"
NUMBER_OF_THREADS=1
ERA="Run3"
NUMBER_OF_EVENTS=100

# STEP 2: RAW-DIGI (Flat 0 to 4, BX=25ns)
cmsDriver.py --filein file:$INPUT_FILE \
	     --python_filename $RAW_CONFIG \
	     --fileout file:$OUTPUT_FILE \
	     --step DIGI,L1,DIGI2RAW,HLT:@fake2 \
	     --datatier GEN-SIM-RAW \
	     --eventcontent RAWSIM \
	     --mc \
	     --conditions $GLOBAL_TAG \
	     --pileup_input "dbs:/MB_TuneCP5_5p36TeV_ppref-pythia8_CMSSW_14_0_0-140X_mcRun3_2024_realistic_v3_GENSIM/phys_heavyions-ppRefMC_20240219_140X_MB_GEN_SIM-657d236c02e738e7f424d8f0e6db5784/USER instance=prod/phys03" \
	     --pileup_dasoption="--limit=0" \
	     --pileup Flat_10_50_25ns \
	     --customise_commands "process.mix.input.nbPileupEvents.probFunctionVariable = cms.vint32(0,1,2,3,4) \n process.mix.input.nbPileupEvents.probValue = cms.vdouble(0.200000,0.200000,0.200000,0.200000,0.200000)" \
	     --nThreads $NUMBER_OF_THREADS \
	     --geometry DB:Extended \
	     --era $ERA \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
