#!/bin/bash

INPUT_FILE="Pythia8_d0_PiPi_GEN-SIM.root"
RAW_CONFIG="Pythia8_d0_PiPi_RAW.py"
OUTPUT_FILE="Pythia8_d0_PiPi_RAW.root"
GLOBAL_TAG="94X_mc2017_realistic_forppRef5TeV"
NUMBER_OF_THREADS=1
ERA="Run2_2017_ppRef"
NUMBER_OF_EVENTS=10

# STEP 2: RAW-DIGI (Flat 0 to 4, BX=25ns)
cmsDriver.py --filein file:$INPUT_FILE \
	     --python_filename $RAW_CONFIG \
	     --fileout file:$OUTPUT_FILE \
	     --step DIGI,L1,DIGI2RAW,HLT:PRef \
	     --datatier GEN-SIM-RAW \
	     --eventcontent RAWSIM \
	     --mc \
	     --conditions $GLOBAL_TAG \
	     --pileup_input "dbs:/MinBias_TuneCUETP8M1_2017_5p02TeV-pythia8/RunIIpp5Spring18GS-94X_mc2017_realistic_v10For2017G_v3-v2/GEN-SIM" \
#	     --pileup_dasoption="--limit=0" \
	     --pileup E7TeV_AVE_2_BX2808 \
	     --customise_commands "process.mix.input.nbPileupEvents.probFunctionVariable = cms.vint32(0,1,2,3,4) \n process.mix.input.nbPileupEvents.probValue = cms.vdouble(0.200000,0.200000,0.200000,0.200000,0.200000)" \
	     --nThreads $NUMBER_OF_THREADS \
	     --geometry DB:Extended \
	     --era $ERA \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
