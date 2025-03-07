#!/bin/bash

OUTPUT_EXECUTABLE="HYDJET_5360GeV_RECODEBUG.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v8"
ERA="Run3_pp_on_PbPb_approxSiStripClusters_2024"
INPUT_FILE="HYDJET_5360GeV_RAWDEBUG.root"
OUTPUT_FILE="HYDJET_5360GeV_RECODEBUG.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

# CMSSW release: CMSSW_14_1_0_pre3
cmsDriver.py --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent RECODEBUG \
	     --datatier RECODEBUG \
	     --conditions $GLOBAL_TAG \
	     --customise_commands "process.hltSiStripRawToDigi.ProductLabel='rawDataCollector';process.hltScalersRawToDigi.scalersInputTag='rawDataCollector'" \
	     --step REPACK:DigiToApproxClusterRaw,RAW2DIGI,L1Reco,RECO \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

