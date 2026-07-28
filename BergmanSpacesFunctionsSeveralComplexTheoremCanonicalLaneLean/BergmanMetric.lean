import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure BergmanMetricPackage {B : BergmanKernelPackage} where
  metricTensor : Tensor B.domain
  kahlerCondition : Prop
  biholomorphicInvariance : Prop

structure BergmanMetricEvidence {B : BergmanKernelPackage} (M : BergmanMetricPackage B) where
  kahlerConditionClosed : M.kahlerCondition
  biholomorphicInvarianceClosed : M.biholomorphicInvariance

def BergmanMetricClosed {B : BergmanKernelPackage} (M : BergmanMetricPackage B) : Prop :=
  M.kahlerCondition ∧ M.biholomorphicInvariance

theorem bergman_metric_closed_from_evidence {B : BergmanKernelPackage} (M : BergmanMetricPackage B) (E : BergmanMetricEvidence M) :
    BergmanMetricClosed M := by
  exact And.intro E.kahlerConditionClosed E.biholomorphicInvarianceClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse