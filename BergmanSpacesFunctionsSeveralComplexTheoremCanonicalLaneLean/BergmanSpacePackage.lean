import AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanSpacePackage (Ω : Type u) [TopologicalSpace Ω] [ComplexStructure Ω] where
  dimension : Nat
  weight : ℝ
  integrabilityExponent : ℝ≥1
  holomorphicFunctionSpace : Type v
  normedStructure : NormedAddCommGroup holomorphicFunctionSpace
  complete : Prop

structure BergmanSpaceEvidence {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] (B : BergmanSpacePackage Ω) where
  dimensionClosed : B.dimension = 1 ∨ B.dimension = 2
  weightClosed : B.weight > -1
  integrabilityExponentClosed : B.integrabilityExponent ≥ 1
  completeClosed : B.complete

def BergmanSpaceClosed {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] (B : BergmanSpacePackage Ω) : Prop :=
  (B.dimension = 1 ∨ B.dimension = 2) ∧ B.weight > -1 ∧ B.integrabilityExponent ≥ 1 ∧ B.complete

theorem bergman_space_closed_from_evidence {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] (B : BergmanSpacePackage Ω) (E : BergmanSpaceEvidence B) : BergmanSpaceClosed B := by
  exact And.intro E.dimensionClosed (And.intro E.weightClosed (And.intro E.integrabilityExponentClosed E.completeClosed))

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse
