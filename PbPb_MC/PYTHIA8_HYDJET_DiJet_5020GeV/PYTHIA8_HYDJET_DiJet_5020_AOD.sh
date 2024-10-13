#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5020GeV_AOD.py"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
ERA="Run2_2018_pp_on_AA"
INPUT_FILE="PYTHIA8_HYDJET_DiJet_5020GeV_RECO.root"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5020GeV_AOD.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

# CMSSW release: CMSSW_10_3_2
cmsDriver.py --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent AODSIM \
	     --datatier AODSIM \
	     --conditions $GLOBAL_TAG \
	     --step PAT \
	     --procModifiers genJetSubEvent \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
