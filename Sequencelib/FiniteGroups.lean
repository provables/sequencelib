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

abbrev SymmetricGroup (n : ℕ) : Type := Equiv.Perm (Fin n)

namespace Sequence

abbrev FiniteGrpOfOrder (n : ℕ) := {G : Grp.{0} // ENat.card G = n}

def FiniteGrpSetoid (n : ℕ) : Setoid (FiniteGrpOfOrder n) where
  r := fun ⟨g1, _⟩ ⟨g2, _⟩ => Nonempty (g1 ≅ g2)
  iseqv := {
    refl := fun ⟨X, _⟩  => ⟨CategoryTheory.Iso.refl X⟩
    symm := fun ⟨a⟩ => ⟨a.symm⟩
    trans := fun ⟨a⟩ ⟨b⟩ => ⟨a.trans b⟩
  }

def NonIsoFiniteGrp (n : ℕ) := Quotient (FiniteGrpSetoid n)

-- Not a good definition because it can be zero if NonIsoFiniteGrp is infinite
-- Fix it after proving equivalence with subgroups of S_n
@[OEIS := A000001]
noncomputable def GroupsOfOrder (n : ℕ) : ℕ := Nat.card (NonIsoFiniteGrp n)

def CayleySubgroup (G : Type*) [Group G] : Subgroup (Equiv.Perm G) :=
  (MulAction.toPermHom G G).range

theorem cayley_theorem {G : Type*} [Group G] : Nonempty (G ≃* (CayleySubgroup G)) :=
  Nonempty.intro <| Equiv.Perm.subgroupOfMulAction G G

theorem perm_group_congr {α β : Type*} (h : α ≃ β) : Nonempty (Equiv.Perm α ≃* Equiv.Perm β) :=
  ⟨⟨Equiv.permCongr h, by aesop⟩⟩

theorem cayley_subgroup_Fin (G : Type*) [Group G] [Finite G] :
    ∃ H : Subgroup <| SymmetricGroup <| Nat.card G, Nonempty (G ≃* H) := by
  let K := CayleySubgroup G
  let g : Equiv.Perm G ≃* SymmetricGroup (Nat.card G) :=
    Nonempty.some <| perm_group_congr <| Finite.equivFin G
  let K' : Subgroup <| SymmetricGroup (Nat.card G) := K.map g
  let k : K ≃* K' := MulEquiv.subgroupMap g K
  let g' : G ≃* K := Nonempty.some cayley_theorem
  use K'
  exact Nonempty.intro (g'.trans k)

def OrderNSubgroupsOfSymmetricGroup (n : ℕ) := {H : Subgroup (SymmetricGroup n) | Nat.card H = n}

def NonIsoOrderNSubgroupsOfSymmetricGroup (n : ℕ) :
    Setoid (OrderNSubgroupsOfSymmetricGroup n) where
  r G H := Nonempty (G ≃* H)
  iseqv := {
    refl _ := instNonemptyOfInhabited
    symm := fun ⟨x⟩ => ⟨x.symm⟩
    trans := fun ⟨x⟩ ⟨y⟩ => ⟨x.trans y⟩
  }

def IsoClassesOrderNSubgroups (n : ℕ) := Quotient (NonIsoOrderNSubgroupsOfSymmetricGroup n)

@[OEIS := A000001]
noncomputable def OrderNGroups (n : ℕ) : ℕ := Nat.card (IsoClassesOrderNSubgroups n)

open Cardinal in
theorem cayley_subgroup_symmetric (n : ℕ) (G : FiniteGrpOfOrder n) :
    ∃ H ∈ OrderNSubgroupsOfSymmetricGroup n, Nonempty (G ≃* H) := by
  have hc : #G = n := Cardinal.natCast_eq_toENat_iff.mp (G.property.symm) |>.symm
  have hc' : G ≃ Fin n := Cardinal.mk_eq_nat_iff.mp hc |>.some
  have hcard : Nat.card G = n := Nat.card_eq_of_equiv_fin hc'
  haveI : Finite G := Finite.intro hc'
  let C := cayley_subgroup_Fin G.val
  rw [hcard] at C
  obtain ⟨H, Hh⟩ := C
  use H
  exact ⟨Trans.simple (Nat.card_congr Hh.some.toEquiv).symm hcard, Hh⟩

theorem foo_thm (n : ℕ) : Nonempty (NonIsoFiniteGrp n ≃ IsoClassesOrderNSubgroups n) := by
  choose f h using cayley_subgroup_symmetric
  let g : FiniteGrpOfOrder n → OrderNSubgroupsOfSymmetricGroup n := fun G => ⟨f n G, h n G |>.left⟩
  let g' : NonIsoFiniteGrp n → IsoClassesOrderNSubgroups n := Quotient.map g (by
    intro a b hh
    let wag := h n a |>.right.some
    let wbg := h n b |>.right.some
    let wab := CategoryTheory.Iso.groupIsoToMulEquiv hh.some
    exact ⟨wag.symm.trans wab |>.trans wbg⟩
  )
  -- Prove that g' is Bijective
  have hinj : Function.Injective g' := by
    whnf
    intro x y hxy
    have : ∃ a, x = ⟦a⟧ := by
      use x.out
      simp [Quotient.out_eq]
    obtain ⟨a, ha⟩ := this
    have : ∃ b, y = ⟦b⟧ := by
      use y.out
      simp [Quotient.out_eq]
    obtain ⟨b, hb⟩ := this
    rw [<- Quotient.out_equiv_out] at hxy
    unfold g' g at hxy
    rw [ha, hb] at hxy
    simp [Quotient.map_mk] at hxy
    whnf at hxy
    let wff := hxy.some
    simp at wff
    let waf := h n a |>.right.some
    let wbf := h n b |>.right.some
    let wab := waf.trans wff |>.trans wbf.symm
    let ww := MulEquiv.toGrpIso wab
    rw [ha, hb]
    apply Quotient.sound
    exact ⟨ww⟩
  have hsur : Function.Surjective g' := by
    intro b
    let wb := b.out
    let wc : Grp := .of wb
    have : ENat.card wc = n := by
      have t2 : ENat.card wb = n := by
        let y := wb.property
        whnf at y
        rw [ENat.card_eq_coe_natCard]
        norm_cast
      rw [← t2]
    let wd : FiniteGrpOfOrder n := ⟨wc, this⟩
    use ⟦wd⟧
    unfold g' g
    simp [Quotient.map_mk]
    have t2 : b = ⟦wb⟧ := Quotient.out_eq b |>.symm
    rw [t2]
    apply Quotient.sound
    whnf
    refine ⟨?_⟩
    simp
    let we := h n wd |>.right.some
    have t3 : wb ≃* wd := by rfl
    exact we.symm.trans t3.symm
  have : Function.Bijective g' := ⟨hinj, hsur⟩
  exact ⟨Equiv.ofBijective g' this⟩

theorem equiv (n : ℕ) : Nat.card (NonIsoFiniteGrp n) = Nat.card (IsoClassesOrderNSubgroups n) :=
  Nat.card_congr <| foo_thm n |>.some

end Sequence
