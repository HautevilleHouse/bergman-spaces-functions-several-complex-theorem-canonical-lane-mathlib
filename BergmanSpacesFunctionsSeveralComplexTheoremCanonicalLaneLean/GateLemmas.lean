import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse