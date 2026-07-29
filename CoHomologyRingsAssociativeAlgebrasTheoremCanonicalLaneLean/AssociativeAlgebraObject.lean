import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean.CoHomologyRingObject

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

structure AssociativeAlgebra (R : Type) [CommRing R] where
  carrier : Type
  algebraMap : R → carrier
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  addComm : ∀ a b c : carrier, addition a b = addition b a
  addZero : ∀ a : carrier, addition a zero = a
  zeroAdd : ∀ a : carrier, addition zero a = a
  addInv : ∀ a : carrier, ∃ b : carrier, addition a b = zero
  mulAssoc : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  mulOne : ∀ a : carrier, multiplication a one = a
  oneMul : ∀ a : carrier, multiplication one a = a
  leftDistrib : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  rightDistrib : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)
  algebraMapAdd : ∀ r s : R, algebraMap (r + s) = addition (algebraMap r) (algebraMap s)
  algebraMapMul : ∀ r s : R, algebraMap (r * s) = multiplication (algebraMap r) (algebraMap s)
  algebraMapOne : algebraMap (1 : R) = one

def associativeAlgebraAdmissible (R : Type) [CommRing R] (A : AssociativeAlgebra R) : Prop :=
  (∀ a : A.carrier, A.addition a A.zero = a) ∧ (∀ a : A.carrier, A.multiplication a A.one = a)

theorem associative_algebra_admissible_checked (R : Type) [CommRing R] (A : AssociativeAlgebra R) :
    associativeAlgebraAdmissible R A := by
  exact ⟨A.addZero, A.mulOne⟩

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse