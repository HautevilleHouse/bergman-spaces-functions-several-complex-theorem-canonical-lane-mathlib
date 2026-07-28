import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure WeightedBergmanSpacePackage where
  domain : Type u
  complexStructure : ComplexStructure domain
  weight : Function domain ℝ
  integrabilityCondition : Prop
  normDefined : Prop

structure WeightedBergmanSpaceEvidence (W : WeightedBergmanSpacePackage) where
  integrabilityConditionClosed : W.integrabilityCondition
  normDefinedClosed : W.normDefined

def WeightedBergmanSpaceClosed (W : WeightedBergmanSpacePackage) : Prop :=
  W.integrabilityCondition ∧ W.normDefined

theorem weighted_bergman_space_closed_from_evidence (W : WeightedBergmanSpacePackage) (E : WeightedBergmanSpaceEvidence W) :
    WeightedBergmanSpaceClosed W := by
  exact And.intro E.integrabilityConditionClosed E.normDefinedClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse