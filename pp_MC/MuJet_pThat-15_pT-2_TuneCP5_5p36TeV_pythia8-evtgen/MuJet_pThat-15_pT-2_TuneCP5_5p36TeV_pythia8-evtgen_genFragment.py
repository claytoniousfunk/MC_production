import FWCore.ParameterSet.Config as cms

from Configuration.Generator.Pythia8CommonSettings_cfi import *
from Configuration.Generator.MCTunes2017.PythiaCP5Settings_cfi import *

generator = cms.EDFilter("Pythia8GeneratorFilter",
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

                         comEnergy = cms.double(5360.0),
                         filterEfficiency = cms.untracked.double(1.0),
                         maxEventsToPrint = cms.untracked.int32(0),
                         pythiaHepMCVerbosity = cms.untracked.bool(False),
                         pythiaPylistVerbosity = cms.untracked.int32(0)
                         )

mugenfilter = cms.EDFilter("MCSmartSingleParticleFilter",
    MaxDecayRadius = cms.untracked.vdouble(2000.0, 2000.0),
    MaxDecayZ = cms.untracked.vdouble(4000.0, 4000.0),
    MaxEta = cms.untracked.vdouble(2.5, 2.5),
    MinDecayZ = cms.untracked.vdouble(-4000.0, -4000.0),
    MinEta = cms.untracked.vdouble(-2.5, -2.5),
    MinPt = cms.untracked.vdouble(2, 2),
    ParticleID = cms.untracked.vint32(13, -13),
    Status = cms.untracked.vint32(1, 1)
)

configurationMetadata = cms.untracked.PSet(
    annotation = cms.untracked.string('PYTHIA 8 (unquenched) dijets + gen-muon filter in NN (pt-hat > 15 GeV; pt-hat < 1200 GeV, weighted, TuneCP5) at sqrt(s) = 5.36 TeV')
    )

ProductionFilterSequence = cms.Sequence(generator*mugenfilter)
