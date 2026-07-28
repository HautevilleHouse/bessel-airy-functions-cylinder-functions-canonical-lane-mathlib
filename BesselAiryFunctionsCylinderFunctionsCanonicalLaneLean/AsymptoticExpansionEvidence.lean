import canonicalLaneMathlib.AdmissibleClass
import BesselAiryCylinderObjects

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure AsymptoticExpansionPackage where
  largeArgumentExpansion : Prop
  smallArgumentExpansion : Prop
  errorBound : Prop
  uniformExpansion : Prop

structure AsymptoticExpansionEvidence (A : AsymptoticExpansionPackage) where
  largeArgumentExpansionClosed : A.largeArgumentExpansion
  smallArgumentExpansionClosed : A.smallArgumentExpansion
  errorBoundClosed : A.errorBound
  uniformExpansionClosed : A.uniformExpansion

def AsymptoticExpansionClosed (A : AsymptoticExpansionPackage) : Prop :=
  A.largeArgumentExpansion ∧ A.smallArgumentExpansion ∧ A.errorBound ∧ A.uniformExpansion

theorem asymptotic_expansion_closed_from_evidence (A : AsymptoticExpansionPackage) (E : AsymptoticExpansionEvidence A) :
    AsymptoticExpansionClosed A := by
  exact And.intro E.largeArgumentExpansionClosed
    (And.intro E.smallArgumentExpansionClosed
      (And.intro E.errorBoundClosed E.uniformExpansionClosed))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse