from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_GEN-SIM_PYTHIA8_HYDJET_DiJet_5360GeV_2024-07-18'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'PrivateMC'
config.JobType.psetName = 'PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM.py'
#config.JobType.maxMemoryMB = 4000
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.outputPrimaryDataset = 'PYTHIA8_HYDJET_DiJet_5360GeV'
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 1000
NJOBS = 100  # This is not a configuration parameter, but an auxiliary variable that we use in the next line.
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_HYDJET_DiJet_5360GeV_MC_generation'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
