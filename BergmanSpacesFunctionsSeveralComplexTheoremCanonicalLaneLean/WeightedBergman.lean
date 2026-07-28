import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure WeightedBergmanPackage where
  weightFunction : Type u
  weightedMeasure : Type v
  weightedBergmanSpaceClosed : Prop
  weightedBergmanSpaceBounded : Prop

structure WeightedBergmanEvidence (W : WeightedBergmanPackage) where
  weightedBergmanSpaceClosedClosed : W.weightedBergmanSpaceClosed
  weightedBergmanSpaceBoundedClosed : W.weightedBergmanSpaceBounded

def WeightedBergmanClosed (W : WeightedBergmanPackage) : Prop :=
  W.weightedBergmanSpaceClosed ∧ W.weightedBergmanSpaceBounded

theorem weighted_bergman_closed_from_evidence (W : WeightedBergmanPackage) (E : WeightedBergmanEvidence W) :
    WeightedBergmanClosed W := by
  exact And.intro E.weightedBergmanSpaceClosedClosed E.weightedBergmanSpaceBoundedClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse