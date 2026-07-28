import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

def ConstrainedBesselAiryCylinderClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bessel_airy_cylinder_endgame (A : AdmissibleClass) :
    ConstrainedBesselAiryCylinderClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
