import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.AdmissibleClass

/-!
# Airy Function Package
-/

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure AiryFunctionPackage where
  argumentSpace : Type u
  function : argumentSpace → ℝ
  satisfiesAiryEquation : Prop
  asymptoticExpansion : Prop
  connectionToBessel : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  satisfiesAiryEquationClosed : A.satisfiesAiryEquation
  asymptoticExpansionClosed : A.asymptoticExpansion
  connectionToBesselClosed : A.connectionToBessel

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.satisfiesAiryEquation ∧ A.asymptoticExpansion ∧ A.connectionToBessel

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage)
    (E : AiryFunctionEvidence A) : AiryFunctionClosed A := by
  exact And.intro E.satisfiesAiryEquationClosed
    (And.intro E.asymptoticExpansionClosed E.connectionToBesselClosed)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
