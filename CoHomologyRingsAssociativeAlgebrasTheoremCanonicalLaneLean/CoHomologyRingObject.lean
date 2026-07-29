import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

structure CoHomologyRing (R : Type) [CommRing R] where
  underlyingSet : Type
  addition : underlyingSet → underlyingSet → underlyingSet
  multiplication : underlyingSet → underlyingSet → underlyingSet
  zero : underlyingSet
  one : underlyingSet
  addAssoc : ∀ a b c : underlyingSet, addition (addition a b) c = addition a (addition b c)
  addComm : ∀ a b : underlyingSet, addition a b = addition b a
  addZero : ∀ a : underlyingSet, addition a zero = a
  zeroAdd : ∀ a : underlyingSet, addition zero a = a
  addInv : ∀ a : underlyingSet, ∃ b : underlyingSet, addition a b = zero
  mulAssoc : ∀ a b c : underlyingSet, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  mulOne : ∀ a : underlyingSet, multiplication a one = a
  oneMul : ∀ a : underlyingSet, multiplication one a = a
  leftDistrib : ∀ a b c : underlyingSet, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  rightDistrib : ∀ a b c : underlyingSet, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)

def coHomologyRingAdmissible (R : Type) [CommRing R] (C : CoHomologyRing R) : Prop :=
  (∀ a : C.underlyingSet, C.addition a C.zero = a) ∧ (∀ a : C.underlyingSet, C.multiplication a C.one = a)

theorem coHomology_ring_admissible_checked (R : Type) [CommRing R] (C : CoHomologyRing R) : coHomologyRingAdmissible R C := by
  exact ⟨C.addZero, C.mulOne⟩

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse