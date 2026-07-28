import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure IntegralRepresentationPackage where
  kernel : ℝ → ℝ → ℝ
  contour : Set ℝ
  representationValid : Prop
  convergenceHeld : Prop

structure IntegralRepresentationEvidence (I : IntegralRepresentationPackage) where
  representationValidClosed : I.representationValid
  convergenceHeldClosed : I.convergenceHeld

def IntegralRepresentationClosed (I : IntegralRepresentationPackage) : Prop :=
  I.representationValid ∧ I.convergenceHeld

theorem integral_representation_closed_from_evidence (I : IntegralRepresentationPackage) (E : IntegralRepresentationEvidence I) :
    IntegralRepresentationClosed I := by
  exact And.intro E.representationValidClosed E.convergenceHeldClosed

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse