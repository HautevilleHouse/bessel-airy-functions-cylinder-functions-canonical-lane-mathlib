import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure ZeroDistributionPackage where
  besselZeros : Prop
  airyZeros : Prop
  spacingProperty : Prop
  comparisonPrinciple : Prop

structure ZeroDistributionEvidence (Z : ZeroDistributionPackage) where
  besselZerosClosed : Z.besselZeros
  airyZerosClosed : Z.airyZeros
  spacingPropertyClosed : Z.spacingProperty
  comparisonPrincipleClosed : Z.comparisonPrinciple

def ZeroDistributionClosed (Z : ZeroDistributionPackage) : Prop :=
  Z.besselZeros ∧ Z.airyZeros ∧ Z.spacingProperty ∧ Z.comparisonPrinciple

theorem zero_distribution_closed_from_evidence (Z : ZeroDistributionPackage)
    (E : ZeroDistributionEvidence Z) : ZeroDistributionClosed Z := by
  exact And.intro E.besselZerosClosed
    (And.intro E.airyZerosClosed (And.intro E.spacingPropertyClosed E.comparisonPrincipleClosed))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse