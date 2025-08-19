from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_GEN-SIM_MinBias_TuneCP5_5p36TeV-pythia8_2025-08-19'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'PrivateMC'
config.JobType.psetName = 'MinBias_TuneCP5_5p36TeV-pythia8_GEN-SIM.py'
#config.JobType.maxMemoryMB = 4000
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.outputPrimaryDataset = 'MinBias_TuneCP5_5p36TeV-pythia8'
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 2000
NJOBS = 5000  # This is not a configuration parameter, but an auxiliary variable that we use in the next line.
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
config.Data.publication = True
config.Data.outputDatasetTag = 'MinBias_TuneCP5_5p36TeV-pythia8_GEN-SIM_2025-08-19'

config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName
config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'

