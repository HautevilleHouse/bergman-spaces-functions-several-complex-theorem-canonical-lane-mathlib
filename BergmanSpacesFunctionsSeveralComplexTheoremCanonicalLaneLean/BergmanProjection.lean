import canonicalLaneMathlib.AdmissibleClass
import BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanProjectionPackage {K : BergmanKernelPackage} where
  projectionBounded : Prop
  projectionIdempotent : Prop
  projectionSelfAdjoint : Prop
  projectionRangeIsBergmanSpace : Prop

structure BergmanProjectionEvidence {K : BergmanKernelPackage} (P : BergmanProjectionPackage K) where
  projectionBoundedClosed : P.projectionBounded
  projectionIdempotentClosed : P.projectionIdempotent
  projectionSelfAdjointClosed : P.projectionSelfAdjoint
  projectionRangeIsBergmanSpaceClosed : P.projectionRangeIsBergmanSpace

def BergmanProjectionClosed {K : BergmanKernelPackage} (P : BergmanProjectionPackage K) : Prop :=
  P.projectionBounded ∧ P.projectionIdempotent ∧ P.projectionSelfAdjoint ∧ P.projectionRangeIsBergmanSpace

theorem bergman_projection_closed_from_evidence {K : BergmanKernelPackage} (P : BergmanProjectionPackage K) (E : BergmanProjectionEvidence P) :
    BergmanProjectionClosed P := by
  exact And.intro E.projectionBoundedClosed
    (And.intro E.projectionIdempotentClosed
      (And.intro E.projectionSelfAdjointClosed E.projectionRangeIsBergmanSpaceClosed))

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse