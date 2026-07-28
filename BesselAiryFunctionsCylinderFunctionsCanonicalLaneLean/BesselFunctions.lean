import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure BesselFunctionPackage where
  order : ℕ
  firstKind : ℝ → ℝ
  secondKind : ℝ → ℝ
  recurrenceRelation : Prop
  wronskianIdentity : Prop
  recurrenceRelationClosed : recurrenceRelation
  wronskianIdentityClosed : wronskianIdentity

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.recurrenceRelation ∧ B.wronskianIdentity

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage) : BesselFunctionClosed B := by
  exact And.intro B.recurrenceRelationClosed B.wronskianIdentityClosed

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse