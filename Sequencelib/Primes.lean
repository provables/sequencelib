/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# The prime numbers

This file introduces the prime numbers sequence, a core sequence on the OEIS.

## Implementation notes

The sequence is defined using `Nat.nth` and `Nat.Prime` from Mathlib. THe sequence
value theorems are proved using `Nat.nth_count`.

## Main results

- The basic definition and the first values of the sequence are given, up to `n=5`.


-/

namespace Sequence

open Nat

/--
The sequence of primes, starting at index 1 (i.e., `Primes 1 = 2`).
-/
@[OEIS := A000040, offset := 1]
noncomputable def Primes (n : ℕ) : ℕ := nth Nat.Prime (n - 1)

theorem Primes_one : Primes 1 = 2 := nth_count prime_two
theorem Primes_two : Primes 2 = 3 := nth_count prime_three
theorem Primes_three : Primes 3 = 5 := nth_count prime_five
theorem Primes_four : Primes 4 = 7 := nth_count prime_seven
theorem Primes_five : Primes 5 = 11 := nth_count prime_eleven

@[OEIS := A000040, offset := 1]
def Primes₂ (n : ℕ) : ℕ :=
  haveI : Infinite {n | Nat.Prime n} := Primes.infinite
  Nat.Subtype.ofNat {n | Nat.Prime n} (n - 1)

theorem Prime_Primes₂ (n : ℕ) : Nat.Prime (Primes₂ n) := by
  haveI : Infinite {n | Nat.Prime n} := Primes.infinite
  unfold Primes₂
  let g (n : ℕ) : ℕ := (Subtype.ofNat {n | Nat.Prime n}) n
  have h_range: Set.range g = {n | Nat.Prime n} := by
    apply Subtype.coe_comp_ofNat_range
  generalize h : (↑(Subtype.ofNat {n | Nat.Prime n} (n - 1)) : ℕ) = w
  have : w ∈ Set.range g := by use n - 1
  rw [h_range] at this
  exact this



#check Subtype.val
theorem bar : Primes₂ = Primes := by
  ext n
  simp [Primes₂, Primes]
  sorry

#check Subtype.val
#check OrderBot.toBot
#check Bot.bot
#check bot_le

#check Subtype.coe_mk
#check Subtype.coe_bot
#check Subtype.map_coe

#check Nat.prime_nth_prime
theorem foo : Primes₂ 1 = 2 := by
  haveI : OrderBot {x // Nat.Prime x} := by sorry
  haveI : Bot {n | Nat.Prime n} := by sorry
  simp [Primes₂]
  simp only [Subtype.ofNat]
  have : (x : ↑{n | Nat.Prime n }) → Nat.Prime x := by
    intro x
    let u := x.property
    exact u
  generalize h : (@Bot.bot _ _ : ↑{n | Nat.Prime n}) = v
  rw [h]
  symm

  rw [← Subtype.mk_eq_bot_iff]
  rw [← Subtype.mk_bot (p := Nat.Prime)]

  apply (isMin_iff_eq_bot (a := 2)).mp
  eta_reduce
  refine (Prime.even_iff ?_).mp ?_
  ·
    simp [Subtype.ofNat]

    sorry
  · sorry
  unfold Subtype.ofNat

  haveI : Nonempty {n | Prime n} := by use 2; exact Nat.prime_two

  let u : Bot {x // Nat.Prime x} :=
    @OrderBot.toBot { x // Nat.Prime x } Subtype.le (Nat.Subtype.orderBot {n | Nat.Prime n})
  generalize h : (@Bot.bot { x // Nat.Prime x } u) = v
  have z := v.property
  have w : (v : ℕ) ≤ 2 := by
    norm_cast


  sorry

end Sequence
