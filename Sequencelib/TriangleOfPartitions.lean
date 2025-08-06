/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta
import Sequencelib.Defs

open Nat

/-!
# Triangle of partition numbers

The function `PartitionsWithGreatestPart n k` counts the number of partitions of `n` in which
the greatest part is equal to `k`.

This function generates the triangle:
```
   n\k 1  2  3  4  5  6  7  8
   1:  1
   2:  1  1
   3:  1  1  1
   4:  1  2  1  1
   5:  1  2  2  1  1
   6:  1  3  3  2  1  1
   7:  1  3  4  3  2  1  1
   8:  1  4  5  5  3  2  1  1
```

The function `TriangleOfPartitions` (A008284, offset 1) enumerates the triangle by rows.
-/

/--
Partitions of `n` with greatest part equal to `k`.
-/
def PartitionsWithGreatestPart (n k : ℕ) : ℕ :=
  match n, k with
  | 0, 0 => 1
  | 0, _ => 0
  | _, 0 => 0
  | (n + 1), (k + 1) => PartitionsWithGreatestPart (n - k) (k + 1) + PartitionsWithGreatestPart n k

def GreatestPart {k : ℕ} (p : Partition k) : ℕ := p.parts.foldl max ⊥

def P (n k : ℕ) := { p : Partition n // GreatestPart p = k}

instance {n k : ℕ} : Finite (P n k) := Subtype.finite

theorem bar {n k : ℕ} : Nonempty (P n k ≃ (P (n - k) k) ⊕ (P (n - 1) (k - 1))) := by sorry

#check Multiset.add_eq_union_iff_disjoint
#synth HAdd (Multiset ℕ) (Multiset ℕ) (Multiset ℕ)
#check Multiset.instAdd
#check Nat.card
#check Multiset.disjSum
#check Nat.card_sum

theorem GreatestPart_le_sum {k : ℕ} (p : Partition k) :
    GreatestPart p ≤ k := by
  simp [GreatestPart]
  refine Multiset.foldl_induction max 0 (· ≤ k) p.parts (by aesop) (by simp) ?c
  intro x h
  rw [← p.parts_sum]
  exact Multiset.le_sum_of_mem h


#check Multiset.foldl_induction
--def q4 (n : ℕ) : ℕ := ∑ k : Fin (n + 1), PartitionsWithGreatestPart n k

#check Nat.Partition
def foo : Nat.Partition 9 := Nat.Partition.ofMultiset <| Multiset.ofList [1, 1, 2, 3, 2]

#check Multiset.max_le_of_forall_le
#eval foo.parts.foldl max ⊥
#eval foo.parts.erase 2
/--
Triangle `PartitionsWithGreatestPart n k` enumerated by rows.
-/
@[OEIS := A008284, offset := 1]
def TriangleOfPartitions (n : ℕ) : ℕ :=
  let (k, l) := TriangleRows (n - 1)
  PartitionsWithGreatestPart (k + 1) (l + 1)

theorem TriangleOfPartitions_one : TriangleOfPartitions 1 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_two : TriangleOfPartitions 2 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_three : TriangleOfPartitions 3 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_four : TriangleOfPartitions 4 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_five : TriangleOfPartitions 5 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_six : TriangleOfPartitions 6 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_seven : TriangleOfPartitions 7 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_eight : TriangleOfPartitions 8 = 2 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_nine : TriangleOfPartitions 9 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_ten : TriangleOfPartitions 10 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_eleven : TriangleOfPartitions 11 = 1 := by
  reduce; simp [PartitionsWithGreatestPart]

theorem TriangleOfPartitions_twelve : TriangleOfPartitions 12 = 2 := by
  reduce; simp [PartitionsWithGreatestPart]
