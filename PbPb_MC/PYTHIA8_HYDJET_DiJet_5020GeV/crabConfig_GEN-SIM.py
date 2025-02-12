from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_GEN-SIM_PYTHIA8_HYDJET_DiJet_5020GeV_103X_batch14_2025-02-11'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'PrivateMC'
config.JobType.psetName = 'PYTHIA8_HYDJET_DiJet_5020GeV_GEN-SIM.py'
#config.JobType.maxMemoryMB = 4000
#config.JobType.allowUndistributedCMSSW = True

config.section_("Data")
config.Data.outputPrimaryDataset = 'PYTHIA8_HYDJET_DiJet_5020GeV_103X_batch14'
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 825
NJOBS = 5000  # This is not a configuration parameter, but an auxiliary variable that we use in the next line.
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_HYDJET_DiJet_5020GeV_GEN-SIM_103X_batch14_2025-02-11'

config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName
config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'

