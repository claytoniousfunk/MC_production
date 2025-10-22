import FWCore.ParameterSet.Config as cms

externalLHEProducer = cms.EDProducer("ExternalLHEProducer",
    args = cms.vstring('/cvmfs/cms-griddata.cern.ch/phys_generator/gridpacks_tarball/PbPb/5p02TeV/superchic/superchic_dimuon_slc7_amd64_gcc11_CMSSW_13_0_18_tarball.tgz'),
    nEvents = cms.untracked.uint32(100000000),
    numberOfParameters = cms.uint32(1),
    outputFile = cms.string('cmsgrid_final.lhe'),
    scriptName = cms.FileInPath('GeneratorInterface/LHEInterface/data/run_generic_tarball_cvmfs.sh')
)


from Configuration.Generator.Pythia8CommonSettings_cfi import *
from Configuration.Generator.MCTunes2017.PythiaCP5Settings_cfi import *
from Configuration.Generator.PSweightsPythia.PythiaPSweightsSettings_cfi import *

generator = cms.EDFilter("Pythia8HadronizerFilter",
                         maxEventsToPrint = cms.untracked.int32(1),
                         pythiaPylistVerbosity = cms.untracked.int32(1),
                         filterEfficiency = cms.untracked.double(1.0),
                         pythiaHepMCVerbosity = cms.untracked.bool(False),
                         comEnergy = cms.double(5020.),
                         PythiaParameters = cms.PSet(
                                parameterSets = cms.vstring('skip_hadronization'),
                                skip_hadronization = cms.vstring('ProcessLevel:all = off',
                                        'Check:event = off')
                        )
)
