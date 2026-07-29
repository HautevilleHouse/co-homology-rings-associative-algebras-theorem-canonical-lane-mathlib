import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

open CohomologyRingLayer

structure KunnethFormula (X Y : Type) (R : Type) [CommRing R] where
  cohomology_X : CohomologyRing R
  cohomology_Y : CohomologyRing R
  cohomology_product : CohomologyRing R
  isomorphism : cohomology_product.ring ≃ (cohomology_X.ring ⊗[R] cohomology_Y.ring)
  respects_cup : ∀ f g : cohomology_X.ring, ∀ h i : cohomology_Y.ring,
    isomorphism (cohomology_product.times (cohomology_X.times f g) (cohomology_Y.times h i)) =
    cohomology_X.times f g ⊗ₜ[R] cohomology_Y.times h i := by
    intro f g h i
    sorry

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse