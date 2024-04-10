#!/bin/bash

cmsDriver.py PYTHIA8_HYDJET_DiJet_genConfig.py \
	     --mc \
	     --pileup HiMixGEN \
	     --pileup_input "dbs:/MinBias_Hydjet_Drum5F_2018_5p02TeV/HINPbPbAutumn18GS-103X_upgrade2018_realistic_HI_v11-v1/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --datatier GEN-SIM \
	     --conditions 103X_upgrade2018_realistic_HI_v11 \
	     --beamspot MatchHI \
	     --step GEN,SIM \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era Run2_2018_pp_on_AA
