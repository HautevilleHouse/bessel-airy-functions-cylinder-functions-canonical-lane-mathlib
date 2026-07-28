import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure CylinderFunctionObject where
  order : ℕ
  argumentSpace : Type u
  function : argumentSpace → ℝ
  satisfiesCylinderEquation : Prop
  analyticContinuation : Prop
  conclusion : satisfiesCylinderEquation ∧ analyticContinuation

def CylinderFunctionClosed (O : CylinderFunctionObject) : Prop :=
  O.satisfiesCylinderEquation ∧ O.analyticContinuation

structure AdmissibleClass where
  object : CylinderFunctionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CylinderFunctionClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
