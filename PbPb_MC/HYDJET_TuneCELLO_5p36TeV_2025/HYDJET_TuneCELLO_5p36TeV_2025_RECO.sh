#!/bin/bash

OUTPUT_EXECUTABLE="HYDJET_TuneCELLO_5p36TeV_2025_RECO.py"
GLOBAL_TAG="151X_mcRun3_2025_realistic_HI_v4"
ERA="Run3_pp_on_PbPb_approxSiStripClusters_2025"
INPUT_FILE="HYDJET_TuneCELLO_5p36TeV_2025_RAW.root"
OUTPUT_FILE="HYDJET_TuneCELLO_5p36TeV_2025_RECO.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=-1

# CMSSW release: CMSSW_15_1_1
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
