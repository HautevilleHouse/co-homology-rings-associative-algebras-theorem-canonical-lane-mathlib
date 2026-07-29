import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean

open CohomologyRingLayer

structure GradedRing (R : Type) [CommRing R] where
  components : ℕ → Type
  add : ∀ n : ℕ, components n → components n → components n
  zero : ∀ n : ℕ, components n
  add_comm : ∀ n : ℕ, ∀ a b : components n, add n a b = add n b a
  add_assoc : ∀ n : ℕ, ∀ a b c : components n, add n (add n a b) c = add n a (add n b c)
  add_zero : ∀ n : ℕ, ∀ a : components n, add n a (zero n) = a
  zero_add : ∀ n : ℕ, ∀ a : components n, add n (zero n) a = a
  mul : ∀ m n : ℕ, components m → components n → components (m + n)
  mul_assoc : ∀ a b c : ℕ, ∀ x : components a, ∀ y : components b, ∀ z : components c,
    mul (a + b) c (mul a b x y) z = mul a (b + c) x (mul b c y z)
  distrib_left : ∀ m n : ℕ, ∀ a : components m, ∀ b c : components n,
    mul m n a (add n b c) = add (m + n) (mul m n a b) (mul m n a c)
  distrib_right : ∀ m n : ℕ, ∀ a b : components m, ∀ c : components n,
    mul m n (add m a b) c = add (m + n) (mul m n a c) (mul m n b c)

end CoHomologyRingsAssociativeAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse