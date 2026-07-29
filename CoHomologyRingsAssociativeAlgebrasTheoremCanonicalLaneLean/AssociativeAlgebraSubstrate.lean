import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

structure AssociativeAlgebra (k : Type) [CommRing k] where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  smul : k → carrier → carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b c : carrier, add a b = add b a
  add_zero : ∀ a : carrier, add a (0 : carrier) = a
  zero_add : ∀ a : carrier, add (0 : carrier) a = a
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  distrib_left : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  distrib_right : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  smul_add : ∀ r : k, ∀ a b : carrier, smul r (add a b) = add (smul r a) (smul r b)
  add_smul : ∀ r s : k, ∀ a : carrier, smul (r + s) a = add (smul r a) (smul s a)
  mul_smul : ∀ r s : k, ∀ a : carrier, smul (r * s) a = smul r (smul s a)
  one_smul : ∀ a : carrier, smul (1 : k) a = a
  smul_mul_assoc : ∀ r : k, ∀ a b : carrier, smul r (mul a b) = mul (smul r a) b
  mul_smul_assoc : ∀ r : k, ∀ a b : carrier, mul a (smul r b) = smul r (mul a b)

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse