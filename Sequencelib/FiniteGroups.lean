import Mathlib
import Sequencelib.Meta

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

@[OEIS A000001]
noncomputable def GroupsOfOrder (n : ℕ) : ℕ := Nat.card (NonIsoFiniteGrp n)

theorem GroupsOfOrder_zero : GroupsOfOrder 0 = 0 := by
  have : FiniteGrpOfOrder 0 = ∅ := by
    unfold FiniteGrpOfOrder
    ext x
    constructor
    · simp
      refine Nat.card_ne_zero.mpr ?_
      constructor
      · use 1
      · exact x.isFinite
    · intro h
      exfalso
      exact h
  unfold GroupsOfOrder
  unfold NonIsoFiniteGrp
  haveI : IsEmpty (FiniteGrpOfOrder 0) := Set.isEmpty_coe_sort.mpr this
  haveI : IsEmpty (Quotient (FiniteGrpSetoid 0)) := Quotient.instIsEmpty
  exact Nat.card_of_isEmpty


-- theorem FiniteGrpUpToIso_Finite (n : ℕ) : Finite (FiniteGrpUpToIso n) := by
--   -- map group to its embedding as (up to isomorphism) subgroup of S_n,
--   -- prove it passes to the quotient
--   sorry
