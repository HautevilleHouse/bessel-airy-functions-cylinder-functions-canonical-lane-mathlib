import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure OrthogonalityPackage where
  besselOrthogonality : Prop
  airyOrthogonality : Prop
  cylinderOrthogonality : Prop
  normingConstants : Prop

structure OrthogonalityEvidence (O : OrthogonalityPackage) where
  besselOrthogonalityClosed : O.besselOrthogonality
  airyOrthogonalityClosed : O.airyOrthogonality
  cylinderOrthogonalityClosed : O.cylinderOrthogonality
  normingConstantsClosed : O.normingConstants

def OrthogonalityClosed (O : OrthogonalityPackage) : Prop :=
  O.besselOrthogonality ∧ O.airyOrthogonality ∧ O.cylinderOrthogonality ∧ O.normingConstants

theorem orthogonality_closed_from_evidence (O : OrthogonalityPackage) (E : OrthogonalityEvidence O) :
    OrthogonalityClosed O := by
  exact And.intro E.besselOrthogonalityClosed
    (And.intro E.airyOrthogonalityClosed (And.intro E.cylinderOrthogonalityClosed E.normingConstantsClosed))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse