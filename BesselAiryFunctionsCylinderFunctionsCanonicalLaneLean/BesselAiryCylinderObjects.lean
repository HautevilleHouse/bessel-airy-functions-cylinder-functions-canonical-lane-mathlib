import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure BesselOrderData where
  order : ℝ
  integerOrder : Bool
  principalValue : Prop

definitionalSignature := "J_ν(z) and Y_ν(z)"

structure AiryScalingData where
  argumentType : Prop
  sign : ℤ
  phaseShift : Prop

definitionalSignature := "Ai(z) and Bi(z)"

structure CylinderFunctionData where
  kind : String  -- "Bessel", "Hankel", "ModifiedBessel"
  order : ℝ
  argument : ℂ
  principalBranch : Bool

structure BesselAiryCylinderAdmittedObject where
  besselData : BesselOrderData
  airyData : AiryScalingData
  cylinderData : CylinderFunctionData
  connectionTheorem : Prop
  asymptoticRelation : Prop
  zeroRelation : Prop
  bridgeCondition : connectionTheorem ∨ asymptoticRelation ∨ zeroRelation

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse