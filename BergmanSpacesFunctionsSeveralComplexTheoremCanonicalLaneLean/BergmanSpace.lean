import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanSpacePackage where
  domain : Type u
  complexStructure : ComplexStructure domain
  measure : Measure domain
  p : ENNReal
  squareIntegrableHolomorphic : Prop
  completeness : Prop

structure BergmanSpaceEvidence (B : BergmanSpacePackage) where
  squareIntegrableHolomorphicClosed : B.squareIntegrableHolomorphic
  completenessClosed : B.completeness

def BergmanSpaceClosed (B : BergmanSpacePackage) : Prop :=
  B.squareIntegrableHolomorphic ∧ B.completeness

theorem bergman_space_closed_from_evidence (B : BergmanSpacePackage) (E : BergmanSpaceEvidence B) :
    BergmanSpaceClosed B := by
  exact And.intro E.squareIntegrableHolomorphicClosed E.completenessClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse