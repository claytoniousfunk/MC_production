#!/bin/bash

cmsDriver.py step2 \
	     --mc \
	     --eventcontent AODSIM \
	     --datatier GEN-SIM-RECO \
	     --conditions 103X_upgrade2018_realistic_HI_v11 \
	     --step RAW2DIGI,L1Reco,RECO \
	     --nThreads 4 \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era Run2_2018_pp_on_AA
