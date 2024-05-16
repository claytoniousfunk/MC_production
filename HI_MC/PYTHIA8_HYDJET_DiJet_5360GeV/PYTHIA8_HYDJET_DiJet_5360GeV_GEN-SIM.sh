#!/bin/bash

cmsDriver.py Configuration/GenProduction/python/PYTHIA8_HYDJET_DiJet_5360GeV_genFragment.py \
	     --python_filename PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.py \
	     --fileout file:/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_GEN-SIM/PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.root \
	     --mc \
	     --pileup HiMixGEN \
	     --pileup_input "dbs:/MinBias_Drum5F_5p36TeV_hydjet/HINPbPbSpring23GS-130X_mcRun3_2023_realistic_HI_v18-v2/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM \
	     --conditions 130X_mcRun3_2023_realistic_HI_v18 \
	     --beamspot MatchHI \
	     --step GEN,SIM \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era Run3_pp_on_PbPb \
	     --nThreads 8 \
	     --no_exec \
	     -n 100
	     











