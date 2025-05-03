import Mathlib

/-!
# Number of Groups of Order n

This file introduces the integer sequence, a_n, whose n^th element is the number of finite,
non-isomorphic groups of size n.

This is sequence [A000001](https://oeis.org/A000001), a core sequence on the OEIS.

## Implementation notes

TBD

## Main results

TBD

-/


/--
* * * * * Approach * * * * *
The idea here is to count the number of subgroups of S_n, the symmetric group
on n letters. By Cayley's theorem, this gives what we want, since every finite
group of order n is isomorphic to a subgroup of S_n.
-/

-- The symmetric group on `n` letters, denoted `S_n`, is the group of
-- permutations of the type `Fin n`. Equiv.Perm α is just bijections from α to itself,
-- which is exactly the set of permutations. See Mathlib
abbrev SymmetricGroup (n : ℕ) : Type := Equiv.Perm (Fin n)

-- For n ∈ ℕ, define the set of subgroups of order n of S_n
def OrderNSubgroupsOfSymmetricGroup (n : ℕ) := { H : Subgroup (SymmetricGroup n) | Nat.card H = n }

-- Put a Setoid structure on the set above using the equivalence relation given by
-- isomorphism class.
def NonIsoOrderNSubgroupsOfSymmetricGroup (n : ℕ) : (Setoid (OrderNSubgroupsOfSymmetricGroup n)) where
  r G G2 := Nonempty (G ≃* G2)
  iseqv := {
    refl G := by
      exact instNonemptyOfInhabited
    symm := by
      intro G G2 HI
      exact (Nonempty.congr (fun a ↦ id a.symm) fun a ↦ id a.symm).mpr HI
    trans := by
      intro G G2 G3 HI1 HI2
      obtain ⟨ i, hi ⟩ := HI1
      obtain ⟨ i2, hi2 ⟩ := HI2

  }

-- Form the quotient of the Setoid to get the isomorphism classes of subgroups of order n.
def IsoClassesOrderNSubgroups (n: ℕ ) := Quotient (NonIsoOrderNSubgroupsOfSymmetricGroup n)

-- Now define the sequence we want
noncomputable def OrderNGroups (n : ℕ) : ℕ := Nat.card (IsoClassesOrderNSubgroups n)

#check Cardinal.mk_eq_zero_iff
#check Subgroup.instUniqueOfSubsingleton

theorem OrderNGroups_zero : OrderNGroups 0 = 0 := by
  have H0 : IsEmpty (OrderNSubgroupsOfSymmetricGroup 0) := by
    by_contra NE
    simp at NE
    unfold OrderNSubgroupsOfSymmetricGroup at NE
    simp at NE
  have H1: IsEmpty (IsoClassesOrderNSubgroups 0) := by
    apply Quotient.instIsEmpty
  unfold OrderNGroups
  apply Nat.card_of_isEmpty

#check Unique.mk
#check Subgroup

theorem OrderNGroups_one : OrderNGroups 1 = 1 := by
  unfold OrderNGroups IsoClassesOrderNSubgroups
  have H1: Unique (OrderNSubgroupsOfSymmetricGroup 1) := by
    unfold OrderNSubgroupsOfSymmetricGroup
    exact ⟨ ⟨ by
      use ⊥
      simp
     ⟩,
     (fun x => by
       simp
       have H2: Nat.card x = 1 := by simp

       apply Subgroup.eq_bot_of_card_eq


     ) ⟩

  have H2: Unique (IsoClassesOrderNSubgroups 1) := by
    apply Quot.instUnique
  let x := H2.uniq
  simp


theorem OrderNGroups_two : OrderNGroups 2 = 1 := by
  sorry
