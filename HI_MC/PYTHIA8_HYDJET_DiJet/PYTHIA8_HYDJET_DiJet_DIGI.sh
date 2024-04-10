#!/bin/bash

cmsDriver.py step1 \
	     --mc \
	     --pileup_input "dbs:/MinBias_Hydjet_Drum5F_2018_5p02TeV/HINPbPbAutumn18GS-103X_upgrade2018_realistic_HI_v11-v1/GEN-SIM" \
	     --eventcontent RAWSIM \
	     --pileup HiMix \
	     --datatier GEN-SIM-DIGI-RAW \
	     --conditions 103X_upgrade2018_realistic_HI_v11 \
	     --step DIGI:pdigi_hi_nogen,L1,DIGI2RAW,HLT:HIon \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era Run2_2018_pp_on_AA
