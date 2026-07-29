import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

structure CohomologyRing (R : Type) [CommRing R] where
  ring : Type
  plus : ring → ring → ring
  times : ring → ring → ring
  degree : ℕ → ℕ
  associative : ∀ a b c : ring, times a (times b c) = times (times a b) c
  distrib_left : ∀ a b c : ring, times a (plus b c) = plus (times a b) (times a c)
  distrib_right : ∀ a b c : ring, times (plus a b) c = plus (times a c) (times b c)

structure CupProduct (X : Type) (R : Type) [CommRing R] where
  cohomology_ring : CohomologyRing R
  cup : ℕ → ℕ → (X → R) → (X → R) → (X → R)

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse