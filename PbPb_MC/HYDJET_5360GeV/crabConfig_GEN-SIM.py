from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_GEN-SIM_HYDJET_5360GeV_141X_updatedEra_updatedGT_2024-10-22'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'PrivateMC'
config.JobType.psetName = 'HYDJET_5360GeV_GEN-SIM.py'
#config.JobType.maxMemoryMB = 4000
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.outputPrimaryDataset = 'HYDJET_5360GeV_141X'
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 10
NJOBS = 1000  # This is not a configuration parameter, but an auxiliary variable that we use in the next line.
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
config.Data.publication = True
config.Data.outputDatasetTag = 'HYDJET_5360GeV_GEN-SIM_141X_updatedEra_updatedGT'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
