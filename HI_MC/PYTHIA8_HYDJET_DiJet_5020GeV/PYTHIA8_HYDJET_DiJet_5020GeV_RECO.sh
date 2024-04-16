#!/bin/bash

cmsDriver.py --filein file:/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RAW/PYTHIA8_HYDJET_DiJet_5020GeV_RAW.root \
	     --python_filename PYTHIA8_HYDJET_DiJet_5020GeV_RECO.py \
             --fileout file:/eos/cms/store/group/phys_heavyions/cbennett/MC_production/output_RECO/PYTHIA8_HYDJET_DiJet_5020GeV_RECO.root \
	     --step RAW2DIGI,L1Reco,RECO \
	     --datatier GEN-SIM-RECO \
	     --eventcontent AODSIM \
	     --mc \
	     --conditions 103X_upgrade2018_realistic_HI_v11 \
	     --nThreads 4 \
	     --scenario HeavyIons \
	     --geometry DB:Extended \
	     --era Run2_2018_pp_on_AA \
	     -n 100
