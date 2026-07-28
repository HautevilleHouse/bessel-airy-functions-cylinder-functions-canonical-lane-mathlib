import BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean.SpecialFunctionObjects

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure CylinderFunctionPackage where
  cylinderDifferentialEquation : Prop
  cylinderRecurrence : Prop
  cylinderAsymptotics : Prop
  cylinderConnectionToBessel : Prop
  cylinderHarmonicExpansions : Prop

structure CylinderFunctionEvidence (C : CylinderFunctionPackage) where
  cylinderDifferentialEquationClosed : C.cylinderDifferentialEquation
  cylinderRecurrenceClosed : C.cylinderRecurrence
  cylinderAsymptoticsClosed : C.cylinderAsymptotics
  cylinderConnectionToBesselClosed : C.cylinderConnectionToBessel
  cylinderHarmonicExpansionsClosed : C.cylinderHarmonicExpansions

def CylinderFunctionClosed (C : CylinderFunctionPackage) : Prop :=
  C.cylinderDifferentialEquation ∧ C.cylinderRecurrence ∧ C.cylinderAsymptotics ∧
  C.cylinderConnectionToBessel ∧ C.cylinderHarmonicExpansions

theorem cylinder_function_closed_from_evidence (C : CylinderFunctionPackage)
    (E : CylinderFunctionEvidence C) : CylinderFunctionClosed C := by
  exact And.intro E.cylinderDifferentialEquationClosed
    (And.intro E.cylinderRecurrenceClosed
      (And.intro E.cylinderAsymptoticsClosed
        (And.intro E.cylinderConnectionToBesselClosed E.cylinderHarmonicExpansionsClosed)))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse
