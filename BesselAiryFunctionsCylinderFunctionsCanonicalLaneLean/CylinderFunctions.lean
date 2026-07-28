import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure CylinderFunctionPackage where
  hankelFirstKind : ℕ → ℝ → ℂ
  hankelSecondKind : ℕ → ℝ → ℂ
  modifiedBesselFirst : ℕ → ℝ → ℝ
  modifiedBesselSecond : ℕ → ℝ → ℝ
  hankelRecurrence : Prop
  modifiedBesselRecurrence : Prop
  hankelRecurrenceClosed : hankelRecurrence
  modifiedBesselRecurrenceClosed : modifiedBesselRecurrence

def CylinderFunctionClosed (C : CylinderFunctionPackage) : Prop :=
  C.hankelRecurrence ∧ C.modifiedBesselRecurrence

theorem cylinder_function_closed_from_evidence (C : CylinderFunctionPackage) : CylinderFunctionClosed C := by
  exact And.intro C.hankelRecurrenceClosed C.modifiedBesselRecurrenceClosed

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse