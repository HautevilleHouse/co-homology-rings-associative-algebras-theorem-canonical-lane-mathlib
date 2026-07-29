import HautevilleHouse.CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean.AssociativeAlgebraBridge

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

def ConstrainedCoHomologyRingsAssociativeAlgebrasClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cohomology_rings_associative_algebras_endgame (A : AdmissibleClass) :
    ConstrainedCoHomologyRingsAssociativeAlgebrasClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse