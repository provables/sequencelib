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

## Main results

- `NonIsoGrpOfOrder n`: counts the number of non-isomorphic groups of order `n`.
- `NonIsoSubgroupsSymmOfOrder n`: counts the number of non-isomorphic subgroups of `S_n`
    of order `n`.
- `NonIsoGrpOfOrder_eq_NonIsoSubgroupsSymmOfOrder`: both sequences above coincide.
- The first values are 0, 1.
-/

abbrev SymmetricGroup (n : ℕ) : Type := Equiv.Perm (Fin n)

namespace Sequence

/-!
## Finite Groups from the bundled category `Grp`
-/

/--
Objects of the category `Grp` that have (extended) cardinality equal to `n`.
We use `ENat.card` because the more usual `Nat.card` is defined as 0 for infinite arguments,
so it would yield the wrong count for order 0.
-/
abbrev GrpOfOrder (n : ℕ) := {G : Grp.{0} // ENat.card G = n}

/--
Two groups are related if they are isomorphic in the category `Grp`.
-/
def FiniteGrpSetoid (n : ℕ) : Setoid (GrpOfOrder n) where
  r := fun ⟨g1, _⟩ ⟨g2, _⟩ => Nonempty (g1 ≅ g2)
  iseqv := {
    refl := fun ⟨X, _⟩  => ⟨CategoryTheory.Iso.refl X⟩
    symm := fun ⟨a⟩ => ⟨a.symm⟩
    trans := fun ⟨a⟩ ⟨b⟩ => ⟨a.trans b⟩
  }

/--
Classes of isomorphism of groups of order `n`.
-/
def NonIsoFiniteGrp (n : ℕ) := Quotient (FiniteGrpSetoid n)

/--
The number of non-isomorphic finite groups of order `n`.
-/
@[OEIS := A000001]
noncomputable def NonIsoGrpOfOrder (n : ℕ) : ℕ := Nat.card (NonIsoFiniteGrp n)


/-!
## Finite groups as subgroups of the Symmetric Group
-/

/--
Subgroups of $S_n$ of order `n`.
-/
def SubgroupsSymmOfOrder (n : ℕ) := {H : Subgroup (SymmetricGroup n) | Nat.card H = n}

/--
Two subgroups of $S_n$ are related if they are isomorphic as groups.
-/
def SubgroupsSymmSetoid (n : ℕ) :
    Setoid (SubgroupsSymmOfOrder n) where
  r G H := Nonempty (G ≃* H)
  iseqv := {
    refl _ := instNonemptyOfInhabited
    symm := fun ⟨x⟩ => ⟨x.symm⟩
    trans := fun ⟨x⟩ ⟨y⟩ => ⟨x.trans y⟩
  }

/--
Classes of isomorphism of subgroups of order `n` of $S_n$.
-/
def NonIsoSubgroupsSymm (n : ℕ) := Quotient (SubgroupsSymmSetoid n)

/--
The number of non-isomorphic subgroups of `S_n` of order `n`.
-/
@[OEIS := A000001]
noncomputable def NonIsoSubgroupsSymmOfOrder (n : ℕ) : ℕ := Nat.card (NonIsoSubgroupsSymm n)

/-!
## Equivalence of the sequences
-/

private def CayleySubgroup (G : Type*) [Group G] : Subgroup (Equiv.Perm G) :=
  (MulAction.toPermHom G G).range

private theorem cayley_theorem {G : Type*} [Group G] : Nonempty (G ≃* (CayleySubgroup G)) :=
  Nonempty.intro <| Equiv.Perm.subgroupOfMulAction G G

private theorem perm_group_congr {α β : Type*} (h : α ≃ β) :
    Nonempty (Equiv.Perm α ≃* Equiv.Perm β) :=
  ⟨⟨Equiv.permCongr h, by aesop⟩⟩

private theorem cayley_subgroup_Fin (G : Type*) [Group G] [Finite G] :
    ∃ H : Subgroup (SymmetricGroup (Nat.card G)), Nonempty (G ≃* H) := by
  let K := CayleySubgroup G
  let g : Equiv.Perm G ≃* SymmetricGroup (Nat.card G) :=
    Nonempty.some <| perm_group_congr <| Finite.equivFin G
  let K' : Subgroup <| SymmetricGroup (Nat.card G) := K.map g
  let k : K ≃* K' := MulEquiv.subgroupMap g K
  let g' : G ≃* K := Nonempty.some cayley_theorem
  use K'
  exact Nonempty.intro (g'.trans k)

open Cardinal in
private theorem cayley_subgroup_symmetric (n : ℕ) (G : GrpOfOrder n) :
    ∃ H ∈ SubgroupsSymmOfOrder n, Nonempty (G ≃* H) := by
  have hc : #G = n := Cardinal.natCast_eq_toENat_iff.mp (G.property.symm) |>.symm
  have hc' : G ≃ Fin n := Cardinal.mk_eq_nat_iff.mp hc |>.some
  have hcard : Nat.card G = n := Nat.card_eq_of_equiv_fin hc'
  haveI : Finite G := Finite.intro hc'
  let C := cayley_subgroup_Fin G.val
  rw [hcard] at C
  obtain ⟨H, Hh⟩ := C
  use H
  exact ⟨Trans.simple (Nat.card_congr Hh.some.toEquiv).symm hcard, Hh⟩

theorem nonempty_equiv (n : ℕ) : Nonempty (NonIsoFiniteGrp n ≃ NonIsoSubgroupsSymm n) := by
  choose f h using cayley_subgroup_symmetric
  let g : GrpOfOrder n → SubgroupsSymmOfOrder n := fun G => ⟨f n G, h n G |>.left⟩
  let g' : NonIsoFiniteGrp n → NonIsoSubgroupsSymm n := Quotient.map g (by
    intro a b hh
    let wag := h n a |>.right.some
    let wbg := h n b |>.right.some
    let wab := CategoryTheory.Iso.groupIsoToMulEquiv hh.some
    exact ⟨wag.symm.trans wab |>.trans wbg⟩
  )
  -- Prove that g' is Bijective
  have hinj : Function.Injective g' := by
    intro x y hxy
    have ha : ⟦x.out⟧ = x := Quotient.out_eq x
    have hb : ⟦y.out⟧ = y := Quotient.out_eq y
    rw [← ha, ← hb] at hxy
    unfold g' g at hxy
    rw [Quotient.map_mk, Quotient.map_mk] at hxy
    let wff := Quotient.exact hxy |>.some
    let waf := h n x.out |>.right.some
    let wbf := h n y.out |>.right.some
    let wab := waf.trans wff |>.trans wbf.symm
    let ww := MulEquiv.toGrpIso wab
    rw [← ha, ← hb]
    exact Quotient.sound ⟨ww⟩
  have hsur : Function.Surjective g' := by
    intro b
    use ⟦⟨.of b.out, by rw [ENat.card_eq_coe_natCard, b.out.property]⟩⟧
    unfold g' g
    rw [Quotient.map_mk, Quotient.sound (b := b.out), Quotient.out_eq]
    exact ⟨h n _ |>.right.some.symm.trans (by rfl)⟩
  have : Function.Bijective g' := ⟨hinj, hsur⟩
  exact ⟨Equiv.ofBijective g' this⟩

theorem finite_NonIsoFiniteGrp (n : ℕ) : Finite (NonIsoFiniteGrp n) := by
  exact Equiv.finite_iff (nonempty_equiv n |>.some) |>.mpr (by apply Quotient.finite)

theorem equiv (n : ℕ) : Nat.card (NonIsoFiniteGrp n) = Nat.card (NonIsoSubgroupsSymm n) :=
  Nat.card_congr <| nonempty_equiv n |>.some

theorem NonIsoGrpOfOrder_eq_NonIsoSubgroupsSymmOfOrder :
    NonIsoGrpOfOrder = NonIsoSubgroupsSymmOfOrder :=
  funext equiv

/-!
## First values of the sequence
-/

theorem NonIsoSubgroupsSymmOfOrder_zero : NonIsoSubgroupsSymmOfOrder 0 = 0 := by
  haveI : IsEmpty (SubgroupsSymmOfOrder 0) := by simp [SubgroupsSymmOfOrder]
  haveI : IsEmpty (NonIsoSubgroupsSymm 0) := Quotient.instIsEmpty
  apply Nat.card_of_isEmpty

theorem NonIsoSubgroupsSymmOfOrder_one : NonIsoSubgroupsSymmOfOrder 1 = 1 := by
  refine Nat.card_eq_one_iff_unique.mpr ?_
  exact ⟨
    Quotient.instSubsingletonQuotient (SubgroupsSymmSetoid 1),
    ⟨⟦⟨⊥, by simp [SubgroupsSymmOfOrder]⟩⟧⟩
  ⟩

theorem NonIsoSubgroupsSymmOfOrder_two : NonIsoSubgroupsSymmOfOrder 2 = 1 := by
  have : ∀ a ∈ SubgroupsSymmOfOrder 2, a = ⊤ :=
    fun a h  => Subgroup.eq_top_of_le_card a (by rw [h, Nat.card_perm]; norm_num)
  haveI : Subsingleton (SubgroupsSymmOfOrder 2) :=
    Subsingleton.intro fun ⟨a, ha⟩ ⟨b, hb⟩ => by simp [this a ha, this b hb |>.symm]
  unfold NonIsoSubgroupsSymmOfOrder NonIsoSubgroupsSymm
  exact Nat.card_of_subsingleton ⟦⟨⊤, by simp [SubgroupsSymmOfOrder, Nat.card_perm]; rfl⟩⟧

end Sequence
