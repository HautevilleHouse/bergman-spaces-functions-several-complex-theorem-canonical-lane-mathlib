import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanAdmittedObject where
  domain : Type
  domainTopology : TopologicalSpace domain
  holomorphicFunctions : Type
  bergmanSpace : Type
  bergmanKernel : Type
  reproducingProperty : Prop
  conclusion : reproducingProperty

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanKernelClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse