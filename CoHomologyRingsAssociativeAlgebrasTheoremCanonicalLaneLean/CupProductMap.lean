import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean.CoHomologyRingObject

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

structure CupProductMap (R : Type) [CommRing R] (C : CoHomologyRing R) where
  source : C.underlyingSet
  target : C.underlyingSet
  product : source → target → C.underlyingSet
  associativity : ∀ (x y z : source), product (product x y) z = product x (product y z)

def cupProductMapAdmissible (R : Type) [CommRing R] (C : CoHomologyRing R) (M : CupProductMap R C) : Prop :=
  ∀ (x y : M.source), M.product x y = C.multiplication x y

theorem cup_product_map_admissible_checked (R : Type) [CommRing R] (C : CoHomologyRing R) (M : CupProductMap R C) :
    cupProductMapAdmissible R C M := by
  intro x y
  exact rfl

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse