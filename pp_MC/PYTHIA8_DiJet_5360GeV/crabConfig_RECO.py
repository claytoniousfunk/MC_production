from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RAW_PYTHIA8_DiJet_5360GeV_2024-09-12'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PYTHIA8_DiJet_5360GeV_RECO.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")

config.Data.inputDataset = '/PYTHIA8_DiJet_5360GeV/phys_heavyions-PYTHIA8_DiJet_5360GeV_MC_generation_2024-09-12-56fc5d8b8e4577bcc1bb99bc07d10a53/USER'
config.Data.inputDBS = 'phys03'
#config.Data.outputPrimaryDataset = 'PH_DiJet_pThat-30to120'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_DiJet_5360GeV_RAW_2024-09-12'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
