import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure BesselDifferentialEquationPackage where
  order : ℝ
  solutionSpace : Type u
  differentialOperator : Prop
  indicialEquation : Prop
  seriesSolution : Prop

structure BesselDifferentialEquationEvidence (B : BesselDifferentialEquationPackage) where
  differentialOperatorClosed : B.differentialOperator
  indicialEquationClosed : B.indicialEquation
  seriesSolutionClosed : B.seriesSolution

def BesselDifferentialEquationClosed (B : BesselDifferentialEquationPackage) : Prop :=
  B.differentialOperator ∧ B.indicialEquation ∧ B.seriesSolution

theorem bessel_differential_equation_closed_from_evidence (B : BesselDifferentialEquationPackage)
    (E : BesselDifferentialEquationEvidence B) : BesselDifferentialEquationClosed B := by
  exact And.intro E.differentialOperatorClosed (And.intro E.indicialEquationClosed E.seriesSolutionClosed)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse