import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
