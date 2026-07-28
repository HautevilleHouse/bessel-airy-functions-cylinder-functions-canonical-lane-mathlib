import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean

structure AsymptoticExpansionPackage where
  besselLargeArgument : Prop
  airyLargeArgument : Prop
  hankelLargeArgument : Prop
  besselLargeArgumentClosed : besselLargeArgument
  airyLargeArgumentClosed : airyLargeArgument
  hankelLargeArgumentClosed : hankelLargeArgument

def AsymptoticExpansionClosed (A : AsymptoticExpansionPackage) : Prop :=
  A.besselLargeArgument ∧ A.airyLargeArgument ∧ A.hankelLargeArgument

theorem asymptotic_expansion_closed_from_evidence (A : AsymptoticExpansionPackage) : AsymptoticExpansionClosed A := by
  exact And.intro A.besselLargeArgumentClosed (And.intro A.airyLargeArgumentClosed A.hankelLargeArgumentClosed)

end BesselAiryFunctionsCylinderFunctionsCanonicalLaneLean
end HautevilleHouse