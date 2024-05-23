#!/bin/bash

OUTPUT_EXECUTABLE="HYDJET_5360GeV_RECO.py"
GLOBAL_TAG="132X_mcRun3_2023_realistic_HI_v9"
ERA="Run3_pp_on_PbPb_approxSiStripClusters_2023"
INPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RAW/HYDJET_5360GeV/HYDJET_5360GeV_RAW.root"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RECO/HYDJET_5360GeV/HYDJET_5360GeV_RECO.root"
NUMBER_OF_THREADS=8
NUMBER_OF_EVENTS=100

# CMSSW release: CMSSW_13_2_10
cmsDriver.py --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent AODSIM \
	     --datatier AODSIM \
	     --conditions $GLOBAL_TAG \
	     --customise_commands "process.siStripDigisHLT.ProductLabel='rawDataCollector'" \
	     --step REPACK:DigiToApproxClusterRaw,RAW2DIGI,L1Reco,RECO \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

