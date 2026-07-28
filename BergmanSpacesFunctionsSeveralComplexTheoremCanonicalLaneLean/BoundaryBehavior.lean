import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BoundaryBehaviorPackage where
  boundaryValueExists : Prop
  almostEverywhereConvergence : Prop
  nontangentialLimit : Prop
  fatouProperty : Prop

structure BoundaryBehaviorEvidence (B : BoundaryBehaviorPackage) where
  boundaryValueExistsClosed : B.boundaryValueExists
  almostEverywhereConvergenceClosed : B.almostEverywhereConvergence
  nontangentialLimitClosed : B.nontangentialLimit
  fatouPropertyClosed : B.fatouProperty

def BoundaryBehaviorClosed (B : BoundaryBehaviorPackage) : Prop :=
  B.boundaryValueExists ∧ B.almostEverywhereConvergence ∧ B.nontangentialLimit ∧ B.fatouProperty

theorem boundary_behavior_closed_from_evidence (B : BoundaryBehaviorPackage) (E : BoundaryBehaviorEvidence B) :
    BoundaryBehaviorClosed B := by
  exact And.intro E.boundaryValueExistsClosed
    (And.intro E.almostEverywhereConvergenceClosed
      (And.intro E.nontangentialLimitClosed E.fatouPropertyClosed))

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse