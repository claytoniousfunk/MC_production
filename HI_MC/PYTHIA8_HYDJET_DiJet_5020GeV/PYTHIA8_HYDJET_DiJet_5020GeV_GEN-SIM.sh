#!/bin/bash
GEN_FRAGMENT_PATH="Configuration/GenProduction/python/PYTHIA8_HYDJET_DiJet_5020GeV_genFragment.py"
OUTPUT_EXECUTABLE="PYTHIA8_HYDJET_DiJet_5020GeV_GEN-SIM.py"
OUTPUT_FILE="/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_GEN-SIM/PYTHIA8_HYDJET_DiJet_5020GeV_GEN-SIM.root"
GLOBAL_TAG="103X_upgrade2018_realistic_HI_v11"
BEAMSPOT="MatchHI"
ERA="Run2_2018_pp_on_AA"
NUMBER_OF_THREADS=8
NUMBER_OF_EVENTS=100


# CMSSW release: CMSSW_10_3_2
cmsDriver.py  $GEN_FRAGMENT_PATH\
	     --python_filename $OUTPUT_EXECUTABLE \
	     --fileout file:$OUTPUT_FILE \
	     --mc \
	     --pileup HiMix \
	     --pileup_input "dbs:/MinBias_Hydjet_Drum5F_2018_5p02TeV/HINPbPbAutumn18GS-103X_upgrade2018_realistic_HI_v11-v1/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM \
	     --conditions $GLOBAL_TAG \
	     --beamspot $BEAMSPOT \
	     --step GEN,SIM \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era $ERA \
	     --nThreads $NUMBER_OF_THREADS \
	     --no_exec \
	     -n $NUMBER_OF_EVENTS

