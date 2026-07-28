import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure ToeplitzOperatorPackage where
  symbolClass : Type u
  operatorBounded : Prop
  operatorCompact : Prop
  spectralProperties : Prop

structure ToeplitzOperatorEvidence (T : ToeplitzOperatorPackage) where
  operatorBoundedClosed : T.operatorBounded
  operatorCompactClosed : T.operatorCompact
  spectralPropertiesClosed : T.spectralProperties

def ToeplitzOperatorClosed (T : ToeplitzOperatorPackage) : Prop :=
  T.operatorBounded ∧ T.operatorCompact ∧ T.spectralProperties

theorem toeplitz_operator_closed_from_evidence (T : ToeplitzOperatorPackage) (E : ToeplitzOperatorEvidence T) :
    ToeplitzOperatorClosed T := by
  exact And.intro E.operatorBoundedClosed (And.intro E.operatorCompactClosed E.spectralPropertiesClosed)

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse