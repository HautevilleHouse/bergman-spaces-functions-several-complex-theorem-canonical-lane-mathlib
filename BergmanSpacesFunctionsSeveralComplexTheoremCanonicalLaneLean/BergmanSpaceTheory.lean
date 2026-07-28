import BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BergmanProjection

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanSpaceTheoryPackage {K : BergmanKernelPackage} (P : BergmanProjectionPackage K) where
  spaceIsHilbert : HilbertSpace (HolomorphicL2 K.domain)
  orthogonalDecomposition : ∀ f : SquareIntegrableFunctions K.domain, f = (P.projectionOperator f) + (P.projectionOperator (c * f))? 
  bergmanToHardyComparison : Prop
  zeroSetProperties : Prop
  invariantUnderBiholomorphism : Prop

structure BergmanSpaceTheoryEvidence {K : BergmanKernelPackage} {P : BergmanProjectionPackage K} (T : BergmanSpaceTheoryPackage P) where
  spaceIsHilbertClosed : T.spaceIsHilbert
  orthogonalDecompositionClosed : T.orthogonalDecomposition
  bergmanToHardyComparisonClosed : T.bergmanToHardyComparison
  zeroSetPropertiesClosed : T.zeroSetProperties
  invariantUnderBiholomorphismClosed : T.invariantUnderBiholomorphism

def BergmanSpaceTheoryClosed {K : BergmanKernelPackage} {P : BergmanProjectionPackage K} (T : BergmanSpaceTheoryPackage P) : Prop :=
  T.spaceIsHilbert ∧ T.orthogonalDecomposition ∧ T.bergmanToHardyComparison ∧ T.zeroSetProperties ∧ T.invariantUnderBiholomorphism

theorem bergman_space_theory_closed_from_evidence {K : BergmanKernelPackage} {P : BergmanProjectionPackage K} (T : BergmanSpaceTheoryPackage P) (E : BergmanSpaceTheoryEvidence T) : BergmanSpaceTheoryClosed T := by
  exact And.intro E.spaceIsHilbertClosed (And.intro E.orthogonalDecompositionClosed (And.intro E.bergmanToHardyComparisonClosed (And.intro E.zeroSetPropertiesClosed E.invariantUnderBiholomorphismClosed)))

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse
