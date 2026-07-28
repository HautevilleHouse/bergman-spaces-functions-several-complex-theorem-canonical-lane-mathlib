import BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.CauchyFormulas

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure MappingTheoremPackage where
  riemannMappingTheorem : ∀ simplyConnectedDomain D, ∃ biholomorphism φ : D → 𝔻
  bergmanKernelUnderBiholomorphism : ∀ φ : biholomorphism D1 → D2, bergmanKernel D1 = det Jφ * bergmanKernel D2 ∘ φ
  carathéodoryKernel : Prop
  kobayashiMetric : Prop
  automorphismGroup : Prop

structure MappingTheoremEvidence (M : MappingTheoremPackage) where
  riemannMappingTheoremClosed : M.riemannMappingTheorem
  bergmanKernelUnderBiholomorphismClosed : M.bergmanKernelUnderBiholomorphism
  carathéodoryKernelClosed : M.carathéodoryKernel
  kobayashiMetricClosed : M.kobayashiMetric
  automorphismGroupClosed : M.automorphismGroup

def MappingTheoremClosed (M : MappingTheoremPackage) : Prop :=
  M.riemannMappingTheorem ∧ M.bergmanKernelUnderBiholomorphism ∧ M.carathéodoryKernel ∧ M.kobayashiMetric ∧ M.automorphismGroup

theorem mapping_theorem_closed_from_evidence (M : MappingTheoremPackage) (E : MappingTheoremEvidence M) : MappingTheoremClosed M := by
  exact And.intro E.riemannMappingTheoremClosed (And.intro E.bergmanKernelUnderBiholomorphismClosed (And.intro E.carathéodoryKernelClosed (And.intro E.kobayashiMetricClosed E.automorphismGroupClosed)))

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse
