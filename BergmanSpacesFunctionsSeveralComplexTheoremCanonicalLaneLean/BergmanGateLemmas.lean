import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BergmanAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanKernelClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse