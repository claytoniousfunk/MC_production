from WMCore.Configuration import Configuration
config = Configuration()

config.section_("General")
config.General.requestName = 'crabSubmit_RAW_QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_noPU_2025-09-13'
config.General.workArea = config.General.requestName
config.General.transferOutputs = True

config.section_("JobType")
config.JobType.pluginName = 'Analysis'
config.JobType.psetName = 'QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_RAW_noPU.py'
config.JobType.maxMemoryMB = 4000
config.JobType.maxJobRuntimeMin = 2700

config.section_("Data")

config.Data.inputDataset = '/QCD_pThat-15to1200_TuneCP5_13TeV_pythia8/phys_heavyions-QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_GEN-SIM-c25c5b1ea97bde519124bfd20edebf02/USER'
config.Data.inputDBS = 'phys03'

config.Data.splitting = 'FileBased'
config.Data.unitsPerJob = 1
config.Data.totalUnits = -1
config.Data.publication = True
config.Data.outputDatasetTag = 'QCD_pThat-15to1200_TuneCP5_13TeV_pythia8_noPU'
config.Data.outLFNDirBase = '/store/group/phys_heavyions/cbennett/'+config.General.requestName

config.section_("Site")
config.Site.storageSite = 'T2_CH_CERN'
