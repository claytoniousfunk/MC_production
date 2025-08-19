from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RAW_MinBias_TuneCP5_5p36TeV-pythia8_2025-08-19'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'MinBias_TuneCP5_5p36TeV-pythia8_RAW.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700

config.section_("Data")

config.Data.inputDataset = '/MinBias_TuneCP5_5p36TeV-pythia8/RunIIIpp5p36Winter24GS-forTracking_141X_mcRun3_2024_realistic_ppRef5TeV_v7-v4/GEN-SIM'
config.Data.inputDBS = 'global'

config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'MinBias_TuneCP5_5p36TeV-pythia8_2025-08-19'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
