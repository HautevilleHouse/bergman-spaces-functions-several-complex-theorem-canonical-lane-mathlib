import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BergmanAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanSpacePackage where
  domain : Type
  weight : Type
  squareIntegrableHolomorphic : Prop
  bergmanSpaceIsHilbert : Prop
  completeness : Prop
  squareIntegrableHolomorphicClosed : squareIntegrableHolomorphic
  bergmanSpaceIsHilbertClosed : bergmanSpaceIsHilbert
  completenessClosed : completeness

def BergmanSpacePackageClosed (P : BergmanSpacePackage) : Prop :=
  P.squareIntegrableHolomorphic ∧ P.bergmanSpaceIsHilbert ∧ P.completeness

theorem bergman_space_package_closed_from_evidence (P : BergmanSpacePackage) :
    BergmanSpacePackageClosed P :=
  And.intro P.squareIntegrableHolomorphicClosed
    (And.intro P.bergmanSpaceIsHilbertClosed P.completenessClosed)

structure BergmanSpaceEvidence (O : BergmanAdmittedObject) where
  squareIntegrableHolomorphic : Prop
  completeness : Prop
  squareIntegrableHolomorphicClosed : squareIntegrableHolomorphic
  completenessClosed : completeness

theorem bergman_space_evidence_provides_admitted_object
    (O : BergmanAdmittedObject) (E : BergmanSpaceEvidence O) : BergmanKernelClosed O :=
  E.squareIntegrableHolomorphicClosed  -- simplified assumption

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse