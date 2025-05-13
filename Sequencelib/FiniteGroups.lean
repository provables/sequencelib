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

-- def foo (n : ℕ) := {G : Grp.{0} | ENat.card G = n}

-- @[OEIS := A000001]
-- noncomputable def bar (n : ℕ) :=
--   ENat.card {X : Quotient (CategoryTheory.isIsomorphicSetoid Grp.{0}) // ENat.card X.out = n}

-- theorem bar_zero : bar 0 = 0 := by
--   unfold bar
--   simp [ENat.card_eq_zero_iff_empty]
--   exact Subtype.isEmpty_false

-- #check instHasEquivOfSetoid
-- #check Nat.card_of_subsingleton
-- #check Fin.addCommSemigroup

-- theorem bar_one : bar 1 = 1 := by
--   unfold bar
--   have : Subsingleton
--       { X : (Quotient (CategoryTheory.isIsomorphicSetoid Grp)) // ENat.card X.out = 1 } := by
--     refine subsingleton_iff.mpr ?_
--     intro X Y
--     obtain ⟨x, xc⟩ := X
--     obtain ⟨y, yc⟩ := Y
--     rw [Subtype.mk.injEq]
--     apply Quotient.out_equiv_out.mp
--     have : Nonempty (x.out ≅ y.out) := by sorry
--     exact this
--   rw [ENat.card_eq_coe_natCard]
--   norm_cast
--   apply Nat.card_of_subsingleton
--   exact ⟨⟦Grp.of <| Equiv.Perm <| Fin 1⟧, by
--     whnf
--     rw [ENat.card_eq_coe_natCard]

--   ⟩



def FiniteGrpOfOrder (n : ℕ) := {G : Grp.{0} // ENat.card G = n}

def FiniteGrpSetoid (n : ℕ) : Setoid (FiniteGrpOfOrder n) where
  r := fun ⟨g1, _⟩ ⟨g2, _⟩ => Nonempty (g1 ≅ g2)
  iseqv := {
    refl := fun ⟨X, _⟩  => ⟨CategoryTheory.Iso.refl X⟩
    symm := fun ⟨a⟩ => ⟨a.symm⟩
    trans := fun ⟨a⟩ ⟨b⟩ => ⟨a.trans b⟩
  }

def NonIsoFiniteGrp (n : ℕ) := Quotient (FiniteGrpSetoid n)

-- Not a good definition because it can be zero if NonIsoFiniteGrp is infinite
@[OEIS := A000001]
noncomputable def GroupsOfOrder (n : ℕ) : ℕ := Nat.card (NonIsoFiniteGrp n)

-- theorem GroupsOfOrder_zero : GroupsOfOrder 0 = 0 := by
--   have : FiniteGrpOfOrder 0 = ∅ := by
--     ext x
--     constructor
--     · exact Nat.card_ne_zero.mpr ⟨(by use 1), x.isFinite⟩
--     · exact False.elim
--   unfold GroupsOfOrder NonIsoFiniteGrp
--   haveI : IsEmpty (FiniteGrpOfOrder 0) := Set.isEmpty_coe_sort.mpr this
--   haveI : IsEmpty (Quotient (FiniteGrpSetoid 0)) := Quotient.instIsEmpty
--   exact Nat.card_of_isEmpty

def CayleySubgroup (G : Type*) [Group G] : Subgroup (Equiv.Perm G) :=
  (MulAction.toPermHom G G).range

theorem cayley_theorem {G : Type*} [Group G] : Nonempty (G ≃* (CayleySubgroup G)) :=
  Nonempty.intro <| Equiv.Perm.subgroupOfMulAction G G

theorem perm_group_congr {α β : Type*} (h : α ≃ β) : Nonempty (Equiv.Perm α ≃* Equiv.Perm β) :=
  ⟨⟨Equiv.permCongr h, by aesop⟩⟩

theorem cayley_subgroup_Fin (G : Type*) [Group G] [Finite G] :
    ∃ H : Subgroup (Equiv.Perm (Fin (Nat.card G))), Nonempty (G ≃* H) := by
  let f := Finite.equivFin G
  let K := CayleySubgroup G
  let g : Equiv.Perm G ≃* Equiv.Perm (Fin (Nat.card G)) := Nonempty.some <| perm_group_congr f
  let K' : Subgroup (Equiv.Perm (Fin (Nat.card G))) := K.map g
  let k : K ≃* K' := MulEquiv.subgroupMap g K
  let g' : G ≃* K := Nonempty.some cayley_theorem
  use K'
  exact Nonempty.intro (g'.trans k)

def CayleyGrp (G : Grp) : Grp := Grp.of <| CayleySubgroup G

theorem cayley_theorem_Grp (G : Grp) : Nonempty (G ≅ (CayleyGrp G)) :=
  Nonempty.intro <| MulEquiv.toGrpIso <| Nonempty.some <| cayley_theorem (G := G)

-- #check MonoidHom.mk
-- theorem GroupsOfOrder_one : GroupsOfOrder 1 = 1 := by
--   unfold GroupsOfOrder
--   haveI : Group (Fin 1) := groupOfIsUnit isUnit_of_subsingleton
--   have t1 : (a : FiniteGrpOfOrder 1) → Nonempty ((a : FiniteGrp) ≅ .of (Equiv.Perm (Fin 1))) := by
--     intro a
--     apply Nonempty.intro
--     let y : Unique (Equiv.Perm (Fin 1)) := Equiv.permUnique
--     refine MulEquiv.toGrpIso (by sorry : ↑a ≃* FiniteGrp.of (Equiv.Perm (Fin 1)))
--     let x : (a : FiniteGrp) ≅ .of (Fin 1) := {
--       hom := by
--         exact Grp.ofHom (by sorry)
--         ,
--       inv := by sorry
--     }
--     sorry
--   haveI : Subsingleton ↑(FiniteGrp.of (Fin 1)).toGrp := Fin.subsingleton_one
--   haveI : Subsingleton (NonIsoFiniteGrp 1) := Subsingleton.intro <|
--     fun a b => Quotient.out_equiv_out.mp <| Nonempty.intro <| Nonempty.some <| t1 a.out b.out
--   apply Nat.card_of_subsingleton
--   use Quotient.mk (FiniteGrpSetoid 1) ⟨FiniteGrp.of (Fin 1), Nat.card_unique⟩

end Sequence
