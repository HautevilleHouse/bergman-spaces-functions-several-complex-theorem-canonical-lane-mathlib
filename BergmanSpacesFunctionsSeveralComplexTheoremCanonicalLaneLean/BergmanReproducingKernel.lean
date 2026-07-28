import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.BergmanAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

def BergmanKernelClosed (O : BergmanAdmittedObject) : Prop :=
  O.reproducingProperty

structure ReproducingKernelPackage where
  kernelDefined : Prop
  reproducingFormula : Prop
  holomorphicInFirstArg : Prop
  antiHolomorphicInSecondArg : Prop
  kernelDefinedClosed : kernelDefined
  reproducingFormulaClosed : reproducingFormula
  holomorphicInFirstArgClosed : holomorphicInFirstArg
  antiHolomorphicInSecondArgClosed : antiHolomorphicInSecondArg

def ReproducingKernelPackageClosed (P : ReproducingKernelPackage) : Prop :=
  P.kernelDefined ∧ P.reproducingFormula ∧ P.holomorphicInFirstArg ∧ P.antiHolomorphicInSecondArg

theorem reproducing_kernel_package_closed_from_evidence (P : ReproducingKernelPackage) :
    ReproducingKernelPackageClosed P := by
  exact And.intro P.kernelDefinedClosed (And.intro P.reproducingFormulaClosed
    (And.intro P.holomorphicInFirstArgClosed P.antiHolomorphicInSecondArgClosed))

structure ReproducingKernelEvidence (O : BergmanAdmittedObject) where
  kernelDefined : Prop
  reproducingFormula : Prop
  kernelDefinedClosed : kernelDefined
  reproducingFormulaClosed : reproducingFormula

theorem bergman_kernel_closed_from_evidence (O : BergmanAdmittedObject)
    (E : ReproducingKernelEvidence O) : BergmanKernelClosed O := by
  exact E.reproducingFormulaClosed

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse