import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure WronskianRelationPackage where
  besselWronskian : Prop
  modifiedBesselWronskian : Prop
  hankelWronskian : Prop
  airyWronskian : Prop

structure WronskianRelationEvidence (W : WronskianRelationPackage) where
  besselWronskianClosed : W.besselWronskian
  modifiedBesselWronskianClosed : W.modifiedBesselWronskian
  hankelWronskianClosed : W.hankelWronskian
  airyWronskianClosed : W.airyWronskian

def WronskianRelationClosed (W : WronskianRelationPackage) : Prop :=
  W.besselWronskian ∧ W.modifiedBesselWronskian ∧ W.hankelWronskian ∧ W.airyWronskian

theorem wronskian_relation_closed_from_evidence (W : WronskianRelationPackage)
    (E : WronskianRelationEvidence W) : WronskianRelationClosed W := by
  exact And.intro E.besselWronskianClosed
    (And.intro E.modifiedBesselWronskianClosed (And.intro E.hankelWronskianClosed E.airyWronskianClosed))

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse