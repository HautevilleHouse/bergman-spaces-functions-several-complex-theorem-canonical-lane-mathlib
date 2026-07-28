import BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean

structure CauchyFormulaPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  cauchyIntegralFormula : ∀ f : HolomorphicOn domain, ∀ z : domain, f z = (1/(2πi)) ∮ (f ζ)/(ζ - z) dζ
  cauchyInequality : ∀ f : HolomorphicOn domain, ∀ z : domain, ∥f z∥ ≤ (1/(2π)) ∮ ∥f ζ∥/|ζ - z| dζ
  integralRepresentationForDerivatives : Prop
  weierstrassConvergence : Prop

structure CauchyFormulaEvidence (C : CauchyFormulaPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  cauchyInequalityClosed : C.cauchyInequality
  integralRepresentationForDerivativesClosed : C.integralRepresentationForDerivatives
  weierstrassConvergenceClosed : C.weierstrassConvergence

def CauchyFormulaClosed (C : CauchyFormulaPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.cauchyInequality ∧ C.integralRepresentationForDerivatives ∧ C.weierstrassConvergence

theorem cauchy_formula_closed_from_evidence (C : CauchyFormulaPackage) (E : CauchyFormulaEvidence C) : CauchyFormulaClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed (And.intro E.cauchyInequalityClosed (And.intro E.integralRepresentationForDerivativesClosed E.weierstrassConvergenceClosed))

end BergmanSpacesFunctionsSeveralComplexTheoremCanonicalLaneLean
end HautevilleHouse
