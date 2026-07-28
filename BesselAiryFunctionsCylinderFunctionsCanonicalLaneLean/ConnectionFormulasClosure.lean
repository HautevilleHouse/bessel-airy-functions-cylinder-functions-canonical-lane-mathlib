import canonicalLaneMathlib.AdmissibleClass
import BesselAiryCylinderObjects

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure ConnectionFormulasPackage where
  besselToAiry : Prop
  airyToBessel : Prop
  hankelToBessel : Prop
  modifiedBesselConnections : Prop

structure ConnectionFormulasEvidence (C : ConnectionFormulasPackage) where
  besselToAiryClosed : C.besselToAiry
  airyToBesselClosed : C.airyToBessel
  hankelToBesselClosed : C.hankelToBessel
  modifiedBesselConnectionsClosed : C.modifiedBesselConnections

def ConnectionFormulasClosed (C : ConnectionFormulasPackage) : Prop :=
  C.besselToAiry ∧ C.airyToBessel ∧ C.hankelToBessel ∧ C.modifiedBesselConnections

theorem connection_formulas_closed_from_evidence (C : ConnectionFormulasPackage) (E : ConnectionFormulasEvidence C) :
    ConnectionFormulasClosed C := by
  exact And.intro E.besselToAiryClosed
    (And.intro E.airyToBesselClosed
      (And.intro E.hankelToBesselClosed E.modifiedBesselConnectionsClosed))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse