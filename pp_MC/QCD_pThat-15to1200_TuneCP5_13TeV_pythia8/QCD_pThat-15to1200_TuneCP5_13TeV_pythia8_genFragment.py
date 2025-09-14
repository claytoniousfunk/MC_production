import FWCore.ParameterSet.Config as cms

from Configuration.Generator.Pythia8CommonSettings_cfi import *
from Configuration.Generator.MCTunesRun3ECM13p6TeV.PythiaCP5Settings_cfi import * 

_generator = cms.EDFilter("Pythia8GeneratorFilter",
                          PythiaParameters = cms.PSet(
                              pythia8CommonSettingsBlock,
   	                      pythia8CP5SettingsBlock,
                              processParameters = cms.vstring('HardQCD:all = on', 
                                                              'PhaseSpace:pTHatMin = 15.', 
                                                              'PhaseSpace:pTHatMax = 1200.',#Upper bound since we will do weighted pthat event-by-event
                                                              'PhaseSpace:bias2Selection = on',#Bias to selection, standard as JERC
                                                              'PhaseSpace:bias2SelectionPow = 4.5',
                                                              'PhaseSpace:bias2SelectionRef = 15.'),
                              parameterSets = cms.vstring('pythia8CommonSettings', 
                                                          'pythia8CP5Settings', 
                                                          'processParameters'),
                              
        ),

                         comEnergy = cms.double(13600.0),
                         filterEfficiency = cms.untracked.double(1.0),
                         maxEventsToPrint = cms.untracked.int32(0),
                         pythiaHepMCVerbosity = cms.untracked.bool(False),
                         pythiaPylistVerbosity = cms.untracked.int32(0)
                          )

from GeneratorInterface.Core.ExternalGeneratorFilter import ExternalGeneratorFilter
generator = ExternalGeneratorFilter(_generator)

ProductionFilterSequence = cms.Sequence(generator)
