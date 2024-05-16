#!/bin/bash

OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5020GeV_RECO.py"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
ERA="Run2_2018_pp_on_AA"
INPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RAW/PYTHIA8_HYDJET_DiJet_5020GeV_RAW.root"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RECO/PYTHIA8_HYDJET_DiJet_5020GeV_RECO.root"
NUMBER_OF_THREADS=8
NUMBER_OF_EVENTS=100

cmsDriver.py step2 \
	     --mc \
	     --python_filename $OUTPUT_EXECUTABLE \
	     --eventcontent AODSIM \
	     --datatier GEN-SIM-RECO \
	     --conditions $GLOBAL_TAG \
	     --step REPACK:DigiToApproxClusterRaw,RAW2DIGI,L1Reco,RECO \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era $ERA \
	     --filein file:$INPUT_FILE \
	     --fileout file:$OUTPUT_FILE \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS 


	     
	     
