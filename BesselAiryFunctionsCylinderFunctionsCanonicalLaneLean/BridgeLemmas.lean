import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CylinderFunctionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
