import BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure SpecialFunctionAdmittedObject where
  space : Type
  differentialEquationSatisfied : Prop
  recurrenceRelationHolds : Prop
  asymptoticExpansionValid : Prop
  orthogonalityRelationHolds : Prop
  connectionFormulasKnown : Prop
  conclusion : connectionFormulasKnown

def FunctionWitnessClosed (O : SpecialFunctionAdmittedObject) : Prop :=
  O.connectionFormulasKnown

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
