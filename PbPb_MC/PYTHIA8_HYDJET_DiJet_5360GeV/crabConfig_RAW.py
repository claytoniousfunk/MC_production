from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RAW_PYTHIA8_HYDJET_DiJet_5360GeV_141X_2024-08-23'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PYTHIA8_HYDJET_DiJet_5360GeV_RAW.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")

config.Data.inputDataset = '/PYTHIA8_HYDJET_DiJet_5360GeV_141X/phys_heavyions-PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM_141X_2024-08-20-c6831afe9537f9464bc43859c7e31f00/USER'
config.Data.inputDBS = 'phys03'
#config.Data.outputPrimaryDataset = 'PH_DiJet_pThat-30to120'
config.Data.splitting = 'Automatic'
#config.Data.unitsPerJob = 100
#config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_HYDJET_DiJet_5360GeV_RAW_141X_2024-08-23'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
