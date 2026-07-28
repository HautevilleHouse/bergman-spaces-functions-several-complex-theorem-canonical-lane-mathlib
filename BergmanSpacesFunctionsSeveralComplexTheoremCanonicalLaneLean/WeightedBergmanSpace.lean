import BergmanSpacePackage

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure WeightedBergmanSpacePackage {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] (B : BergmanSpacePackage Ω) where
  weightFunction : Ω → ℝ
  weightPositive : ∀ z, weightFunction z > 0
  integrableWeight : Prop

def weightedBergmanNorm {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {B : BergmanSpacePackage Ω} (W : WeightedBergmanSpacePackage B) : Norm B.holomorphicFunctionSpace where
  norm f := (∫ z, (‖f z‖ ^ B.integrabilityExponent) * W.weightFunction z ∂μ) ^ (1/B.integrabilityExponent)

structure WeightedBergmanSpaceEvidence {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {B : BergmanSpacePackage Ω} (W : WeightedBergmanSpacePackage B) where
  weightPositiveClosed : ∀ z, W.weightFunction z > 0
  integrableWeightClosed : W.integrableWeight

def WeightedBergmanSpaceClosed {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {B : BergmanSpacePackage Ω} (W : WeightedBergmanSpacePackage B) : Prop :=
  (∀ z, W.weightFunction z > 0) ∧ W.integrableWeight

theorem weighted_bergman_space_closed_from_evidence {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {B : BergmanSpacePackage Ω} (W : WeightedBergmanSpacePackage B) (E : WeightedBergmanSpaceEvidence W) : WeightedBergmanSpaceClosed W := by
  exact And.intro E.weightPositiveClosed E.integrableWeightClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse
