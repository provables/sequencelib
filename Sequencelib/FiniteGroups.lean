/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# Finite groups of order n

This file introduces the number of non-isomorphic groups of order `n`.
-/

namespace Sequence

def FiniteGrpOfOrder (n : ℕ) := {G : FiniteGrp.{1} | Nat.card G = n}

def FiniteGrpSetoid (n : ℕ) : Setoid (FiniteGrpOfOrder n) where
  r g1 g2 := Nonempty ((g1 : FiniteGrp) ≅ g2)
  iseqv := {
    refl := by
      exact fun _ => CategoryTheory.Iso.nonempty_iso_refl (_ : FiniteGrp)
    symm := by
      intro x y h
      exact (CategoryTheory.Iso.nonempty_iso_symm (_ : FiniteGrp) _).mp h
    trans := by
      intro x y z h1 h2
      refine Nonempty.intro <| CategoryTheory.Iso.trans Classical.ofNonempty
        (Classical.ofNonempty : (y : FiniteGrp) ≅ _)
  }

def NonIsoFiniteGrp (n : ℕ) := Quotient (FiniteGrpSetoid n)

@[OEIS := A000001]
noncomputable def GroupsOfOrder (n : ℕ) : ℕ := Nat.card (NonIsoFiniteGrp n)

theorem GroupsOfOrder_zero : GroupsOfOrder 0 = 0 := by
  have : FiniteGrpOfOrder 0 = ∅ := by
    ext x
    constructor
    · exact Nat.card_ne_zero.mpr ⟨(by use 1), x.isFinite⟩
    · exact False.elim
  unfold GroupsOfOrder NonIsoFiniteGrp
  haveI : IsEmpty (FiniteGrpOfOrder 0) := Set.isEmpty_coe_sort.mpr this
  haveI : IsEmpty (Quotient (FiniteGrpSetoid 0)) := Quotient.instIsEmpty
  exact Nat.card_of_isEmpty

end Sequence
