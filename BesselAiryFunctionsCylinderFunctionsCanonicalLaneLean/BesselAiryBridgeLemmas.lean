import canonicalLaneMathlib.AdmissibleClass
import BesselAiryCylinderObjects

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

def bridgeClosed (A : BesselAiryCylinderAdmittedObject) : Prop :=
  A.bridgeCondition

theorem bridge_from_admissible_class (A : BesselAiryCylinderAdmittedObject) :
    bridgeClosed A := by
  exact A.bridgeCondition

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse