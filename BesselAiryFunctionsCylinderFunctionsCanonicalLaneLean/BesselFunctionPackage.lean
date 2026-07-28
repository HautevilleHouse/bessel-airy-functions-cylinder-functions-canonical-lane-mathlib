import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.AdmissibleClass

/-!
# Bessel Function Package
-/

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure BesselFunctionPackage where
  order : ℕ
  argumentSpace : Type u
  function : argumentSpace → ℝ
  satisfiesBesselEquation : Prop
  recurrenceRelation : Prop
  asymptoticExpansion : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  satisfiesBesselEquationClosed : B.satisfiesBesselEquation
  recurrenceRelationClosed : B.recurrenceRelation
  asymptoticExpansionClosed : B.asymptoticExpansion

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.satisfiesBesselEquation ∧ B.recurrenceRelation ∧ B.asymptoticExpansion

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage)
    (E : BesselFunctionEvidence B) : BesselFunctionClosed B := by
  exact And.intro E.satisfiesBesselEquationClosed
    (And.intro E.recurrenceRelationClosed E.asymptoticExpansionClosed)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
