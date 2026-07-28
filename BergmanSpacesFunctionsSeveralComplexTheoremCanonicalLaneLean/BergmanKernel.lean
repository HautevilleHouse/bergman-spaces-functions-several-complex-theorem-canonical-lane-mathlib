import canonicalLaneMathlib.AdmissibleClass
import BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BergmanSpace

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanKernelPackage (B : BergmanSpacePackage) where
  kernel : B.domain → B.domain → ℂ
  reproducingProperty : ∀ f : HolomorphicFunction B.domain, ∀ z : B.domain, f z = ∫ w, kernel z w * f w ∂(B.measure)
  boundedness : Prop

structure BergmanKernelEvidence {B : BergmanSpacePackage} (K : BergmanKernelPackage B) where
  reproducingPropertyClosed : K.reproducingProperty
  boundednessClosed : K.boundedness

def BergmanKernelClosed {B : BergmanSpacePackage} (K : BergmanKernelPackage B) : Prop :=
  K.reproducingProperty ∧ K.boundedness

theorem bergman_kernel_closed_from_evidence {B : BergmanSpacePackage} (K : BergmanKernelPackage B) (E : BergmanKernelEvidence K) :
    BergmanKernelClosed K := by
  exact And.intro E.reproducingPropertyClosed E.boundednessClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse