import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure OrthogonalityPackage where
  weight : ℝ → ℝ
  innerProduct : ℝ
  orthogonalityProof : Prop
  completeness : Prop

structure OrthogonalityEvidence (O : OrthogonalityPackage) where
  orthogonalityProofClosed : O.orthogonalityProof
  completenessClosed : O.completeness

def OrthogonalityClosed (O : OrthogonalityPackage) : Prop :=
  O.orthogonalityProof ∧ O.completeness

theorem orthogonality_closed_from_evidence (O : OrthogonalityPackage) (E : OrthogonalityEvidence O) :
    OrthogonalityClosed O := by
  exact And.intro E.orthogonalityProofClosed E.completenessClosed

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse