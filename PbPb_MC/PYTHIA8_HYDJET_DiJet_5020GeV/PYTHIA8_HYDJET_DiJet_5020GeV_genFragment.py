import FWCore.ParameterSet.Config as cms

from Configuration.Generator.Pythia8CommonSettings_cfi import *
from Configuration.Generator.MCTunes2017.PythiaCP5Settings_cfi import *
from IOMC.RandomEngine.IOMC_cff import RandomNumberGeneratorService


generator = cms.EDFilter("Pythia8GeneratorFilter",
    PythiaParameters = cms.PSet(
        pythia8CommonSettingsBlock,
   	pythia8CP5SettingsBlock,
        processParameters = cms.vstring('Random:setSeed = on', # randomize the initial seed to avoid duplicate gen production
                                        'HardQCD:all = on', 
                                        'PhaseSpace:pTHatMin = 30.', 
                                        'PhaseSpace:pTHatMax = 120.',#Upper bound since we will do weighted pthat event-by-event
                                        'PhaseSpace:bias2Selection = off',#Bias to selection, standard as JERC
                                        'PhaseSpace:bias2SelectionPow = 4.5',
                                        'PhaseSpace:bias2SelectionRef = 15.'),
        parameterSets = cms.vstring('pythia8CommonSettings', 
                                    'pythia8CP5Settings', 
                                    'processParameters'),
        
        ),

                         comEnergy = cms.double(5020.0),
                         filterEfficiency = cms.untracked.double(1.0),
                         maxEventsToPrint = cms.untracked.int32(0),
                         pythiaHepMCVerbosity = cms.untracked.bool(False),
                         pythiaPylistVerbosity = cms.untracked.int32(0)
                         )

configurationMetadata = cms.untracked.PSet(
    annotation = cms.untracked.string('PYTHIA 8 (unquenched) dijets in NN (pt-hat = 60 GeV; TuneCP5) at sqrt(s) = 5.02 TeV')
    )

ProductionFilterSequence = cms.Sequence(generator)
