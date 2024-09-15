from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RAWDEBUG_PYTHIA8_HYDJET_DiJet_5360GeV_132X_2024-09-14'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'PYTHIA8_HYDJET_DiJet_5360GeV_RAWDEBUG.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700

config.section_("Data")

config.Data.inputDataset = '/PYTHIA8_HYDJET_DiJet_5360GeV_130X/phys_heavyions-PYTHIA8_HYDJET_DiJet_5360GeV_GEN-SIM_130X_2024-09-14-2bcea9d9a630e1684665574799557bab/USER'
config.Data.inputDBS = 'phys03'

config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'PYTHIA8_HYDJET_DiJet_5360GeV_RAWDEBUG_132X_2024-09-14'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
