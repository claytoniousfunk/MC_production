from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RECODEBUG_HYDJET_5360GeV_141X_updatedEra_updatedGT_2024-10-23'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'HYDJET_5360GeV_RECODEBUG.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")

config.Data.inputDataset = '/HYDJET_5360GeV_141X/phys_heavyions-HYDJET_5360GeV_RAWDEBUG_141X_updatedEra_updatedGT-5e7815f00f1247af13376689a83381b9/USER'
config.Data.inputDBS = 'phys03'
config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'HYDJET_5360GeV_RECODEBUG_141X_updatedEra_updateGT'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
