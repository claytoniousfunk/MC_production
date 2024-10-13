from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_AOD_PYTHIA8_HYDJET_DiJet_5020GeV_103X_2024-10-12'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PYTHIA8_HYDJET_DiJet_5020GeV_AOD.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")

config.Data.inputDataset = '/PYTHIA8_HYDJET_DiJet_5020GeV_103X/phys_heavyions-PYTHIA8_HYDJET_DiJet_5360GeV_RECO_103X_2024-10-06-5db5dfa073297cb96791f14c622e83e2/USER'
config.Data.inputDBS = 'phys03'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_HYDJET_DiJet_5020GeV_AOD_103X_2024-10-12'
#config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_US_Vanderbilt'
