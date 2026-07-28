import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanAdmittedObject where
  domain : Type u
  dimension : Nat
  bergmanSpace : Type v
  spaceIsClosed : Prop
  spaceIsClosedTerm : spaceIsClosed

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.spaceIsClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse