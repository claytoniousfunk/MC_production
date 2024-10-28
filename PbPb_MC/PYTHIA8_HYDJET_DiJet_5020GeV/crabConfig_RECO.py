from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RECO_PYTHIA8_HYDJET_DiJet_5020GeV_103X_2024-10-27-1'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PYTHIA8_HYDJET_DiJet_5020GeV_RECO.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")

config.Data.inputDataset = '/PYTHIA8_HYDJET_DiJet_5020GeV_103X_batch13/cbennett-PYTHIA8_HYDJET_DiJet_5020GeV_RAW_103X_2024-10-17-d57f5e81b90a7ad5c8b6d5beabc7b953/USER'
config.Data.inputDBS = 'phys03'
#config.Data.outputPrimaryDataset = 'PH_DiJet_pThat-30to120'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 10
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_HYDJET_DiJet_5020GeV_RECO_103X'
#config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_US_Vanderbilt'
