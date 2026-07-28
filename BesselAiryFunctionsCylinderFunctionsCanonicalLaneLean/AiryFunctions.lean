import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure AiryFunctionPackage where
  ai : ℝ → ℝ
  bi : ℝ → ℝ
  differentialEquation : Prop
  wronskianIdentity : Prop
  asymptoticBehavior : Prop
  differentialEquationClosed : differentialEquation
  wronskianIdentityClosed : wronskianIdentity
  asymptoticBehaviorClosed : asymptoticBehavior

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.differentialEquation ∧ A.wronskianIdentity ∧ A.asymptoticBehavior

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage) : AiryFunctionClosed A := by
  exact And.intro A.differentialEquationClosed (And.intro A.wronskianIdentityClosed A.asymptoticBehaviorClosed)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse