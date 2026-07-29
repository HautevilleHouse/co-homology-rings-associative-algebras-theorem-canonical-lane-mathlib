import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

open CohomologyRingLayer
open GradedRingLayer

structure CohomologyProductStructure (X : Type) (R : Type) [CommRing R] where
  cohomology_ring : CohomologyRing R
  graded_ring : GradedRing R
  compatibility : ∀ p q : ℕ, ∀ f : cohomology_ring.ring, ∀ g : cohomology_ring.ring,
    graded_ring.mul p q (cast (by simp) f) (cast (by simp) g) = cast (by simp) (cohomology_ring.times f g) := by
    intro p q f g
    sorry

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse