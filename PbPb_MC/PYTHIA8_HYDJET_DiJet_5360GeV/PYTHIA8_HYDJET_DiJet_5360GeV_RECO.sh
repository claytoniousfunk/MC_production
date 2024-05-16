#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5360GeV_RECO.py"
GLOBAL_TAG="132X_mcRun3_2023_realistic_HI_v9"
ERA="Run3_pp_on_PbPb_approxSiStripClusters_2023"
INPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RAW/PYTHIA8_HYDJET_DiJet_5360GeV_RAW.root"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RECO/PYTHIA8_HYDJET_DiJet_5360GeV_RECO.root"
NUMBER_OF_THREADS=8
NUMBER_OF_EVENTS=100

# CMSSW release: CMSSW_13_2_10
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
