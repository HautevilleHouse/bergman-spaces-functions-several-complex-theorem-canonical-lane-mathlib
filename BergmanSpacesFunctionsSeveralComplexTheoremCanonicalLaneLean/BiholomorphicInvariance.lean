import BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BiholomorphicMappingPackage {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] (Ω' : Type u) [TopologicalSpace Ω'] [ComplexStructure Ω'] (B : BergmanSpacePackage Ω) (B' : BergmanSpacePackage Ω') where
  biholomorphicMap : Ω → Ω'
  isBiholomorphic : BiHolomorphic b
  kernelTransformation : BergmanKernelPackage B → BergmanKernelPackage B'
  invarianceProperty : ∀ (K : BergmanKernelPackage B) (z w : Ω),
    (kernelTransformation K).kernelFunction (b z, b w) = (det (Jacobian b z)) * K.kernelFunction (z w) * conj (det (Jacobian b w))

structure BiholomorphicInvarianceEvidence {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {Ω' : Type u} [TopologicalSpace Ω'] [ComplexStructure Ω'] {B : BergmanSpacePackage Ω} {B' : BergmanSpacePackage Ω'} (M : BiholomorphicMappingPackage Ω Ω' B B') where
  isBiholomorphicClosed : M.isBiholomorphic
  invariancePropertyClosed : ∀ (K : BergmanKernelPackage B) (z w : Ω),
    (M.kernelTransformation K).kernelFunction (M.biholomorphicMap z, M.biholomorphicMap w) = (det (Jacobian (M.biholomorphicMap) z)) * K.kernelFunction (z w) * conj (det (Jacobian (M.biholomorphicMap) w))

def BiholomorphicInvarianceClosed {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {Ω' : Type u} [TopologicalSpace Ω'] [ComplexStructure Ω'] {B : BergmanSpacePackage Ω} {B' : BergmanSpacePackage Ω'} (M : BiholomorphicMappingPackage Ω Ω' B B') : Prop :=
  M.isBiholomorphic ∧ (∀ (K : BergmanKernelPackage B) (z w : Ω),
    (M.kernelTransformation K).kernelFunction (M.biholomorphicMap z, M.biholomorphicMap w) = (det (Jacobian (M.biholomorphicMap) z)) * K.kernelFunction (z w) * conj (det (Jacobian (M.biholomorphicMap) w)))

theorem biholomorphic_invariance_closed_from_evidence {Ω : Type u} [TopologicalSpace Ω] [ComplexStructure Ω] {Ω' : Type u} [TopologicalSpace Ω'] [ComplexStructure Ω'] {B : BergmanSpacePackage Ω} {B' : BergmanSpacePackage Ω'} (M : BiholomorphicMappingPackage Ω Ω' B B') (E : BiholomorphicInvarianceEvidence M) : BiholomorphicInvarianceClosed M := by
  exact And.intro E.isBiholomorphicClosed E.invariancePropertyClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse
