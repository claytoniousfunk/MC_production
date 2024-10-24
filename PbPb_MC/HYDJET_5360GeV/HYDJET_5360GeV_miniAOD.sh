#!/bin/bash

OUTPUT_EXECUTABLE="HYDJET_5360GeV_miniAOD.py"
GLOBAL_TAG="141X_mcRun3_2024_realistic_HI_v8"
ERA="Run3_pp_on_PbPb_approxSiStripClusters_2024"
INPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/test/2023_PbPb/PYTHIA8_HYDJET_DiJet_5360GeV_RECODEBUG.root"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/test/2023_PbPb/PYTHIA8_HYDJET_DiJet_5360GeV_miniAOD.root"
NUMBER_OF_THREADS=1
NUMBER_OF_EVENTS=10

# CMSSW release: CMSSW_14_1_3
cmsDriver.py --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent MINIAODSIM \
	     --datatier MINIAODSIM \
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
