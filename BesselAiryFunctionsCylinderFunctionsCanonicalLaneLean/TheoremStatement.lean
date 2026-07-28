import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure BesselAiryCylinderSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BesselAiryCylinderAdmittedObject where
  space : BesselAiryCylinderSpace
  differentialEquationSatisifed : Prop
  asymptoticCondition : Prop
  orthogonalityRelation : Prop
  conclusion : differentialEquationSatisifed ∧ asymptoticCondition ∧ orthogonalityRelation

def BesselAiryCylinderWitnessClosed (O : BesselAiryCylinderAdmittedObject) : Prop :=
  O.differentialEquationSatisifed ∧ O.asymptoticCondition ∧ O.orthogonalityRelation

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse