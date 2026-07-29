import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean.CoHomologyRingObject

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

structure CohomologyRingStructure (R : Type) [CommRing R] where
  cohomologyRing : CoHomologyRing R
  ringType : Prop
  associativeAlgebraOverR : Proposition

def cohomologyRingStructureAdmissible (R : Type) [CommRing R] (C : CohomologyRingStructure R) : Prop :=
  coHomologyRingAdmissible R C.cohomologyRing ∧ C.ringType

theorem cohomology_ring_structure_admissible_checked (R : Type) [CommRing R] (C : CohomologyRingStructure R) :
    cohomologyRingStructureAdmissible R C := by
  exact ⟨coHomology_ring_admissible_checked R C.cohomologyRing, C.ringType⟩

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse