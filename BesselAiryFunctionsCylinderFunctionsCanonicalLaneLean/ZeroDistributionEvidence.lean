import canonicalLaneMathlib.AdmissibleClass
import BesselAiryCylinderObjects

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure ZeroDistributionPackage where
  besselZeroCount : Prop
  airyZeroAsymptotics : Prop
  cylinderZeroDensity : Prop
  interlacingProperty : Prop

structure ZeroDistributionEvidence (Z : ZeroDistributionPackage) where
  besselZeroCountClosed : Z.besselZeroCount
  airyZeroAsymptoticsClosed : Z.airyZeroAsymptotics
  cylinderZeroDensityClosed : Z.cylinderZeroDensity
  interlacingPropertyClosed : Z.interlacingProperty

def ZeroDistributionClosed (Z : ZeroDistributionPackage) : Prop :=
  Z.besselZeroCount ∧ Z.airyZeroAsymptotics ∧ Z.cylinderZeroDensity ∧ Z.interlacingProperty

theorem zero_distribution_closed_from_evidence (Z : ZeroDistributionPackage) (E : ZeroDistributionEvidence Z) :
    ZeroDistributionClosed Z := by
  exact And.intro E.besselZeroCountClosed
    (And.intro E.airyZeroAsymptoticsClosed
      (And.intro E.cylinderZeroDensityClosed E.interlacingPropertyClosed))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse