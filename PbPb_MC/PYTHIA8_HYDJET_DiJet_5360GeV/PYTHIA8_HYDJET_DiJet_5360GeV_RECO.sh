#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_RECO.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v2"
ERA="Run3_pp_on_PbPb_2023"
INPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_RAW.root"
OUTPUT_FILE="PYTHIA8_HYDJET_DiJet_5360GeV_RECO.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=100

# CMSSW release: CMSSW_14_1_0_pre3
cmsDriver.py --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent AODSIM \
	     --datatier AODSIM \
	     --conditions $GLOBAL_TAG \
	     --customise_commands "process.hltSiStripRawToDigi.ProductLabel='rawDataCollector';process.hltScalersRawToDigi.scalersInputTag='rawDataCollector'" \
	     --step REPACK:DigiToApproxClusterRaw,RAW2DIGI,L1Reco,RECO \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS
