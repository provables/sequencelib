/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Partitions

This file introduces the Partitions sequence, a core sequence on the OEIS.

## Implementation notes

The sequence is defined as the cardinality of `Nat.Partition` structure from Mathlib.

## Main results

- The basic definition and the first two values of the sequence are given.


-/

namespace Sequence

/--
The sequence of the number of partitions of `n`; i.e., 1, 1, 2, 3, 5, 7, 11, ...
-/
@[OEIS := A000041, offset := 0]
noncomputable def Partitions (n : ℕ) := Nat.card (Nat.Partition n)

theorem Partitions_zero : Partitions 0 = 1 := by
  simp [Partitions]

theorem Partitions_one : Partitions 1 = 1 := by
  simp [Partitions]

-- -- A008284 (with offset 1)
-- def q3 (n m : ℕ) : ℕ :=
--   match n, m with
--   | 0, 0 => 1
--   | 0, _ => 0
--   | _, 0 => 0
--   | (n + 1), (m + 1) => q3 (n - m) (m + 1) + q3 n m

-- def q4 (n : ℕ) : ℕ := ∑ k : Fin (n + 1), q3 n k

-- #eval q3 4 4

-- def step' (f : ℕ → ℕ) : ℕ × ℕ × ℕ → ℕ × ℕ × ℕ :=
--   fun ⟨s, j, k⟩ =>
--   ⟨
--     if Odd (k / 2) then
--       s + f j
--     else
--       s - f j
--     ,
--     if Odd k then
--       j - k
--     else
--       j - k / 2
--     ,
--     k + 1
--     ⟩

-- theorem foo (f : ℕ → ℕ) (a b : ℕ) (h : 2 ≤ b): StrictAnti (fun n => (step' f ⟨a, n, b⟩).2.1) := by
--   sorry

-- #check Fin 2
-- #check List.finRange
-- #check Finset.image
-- def PartitionsAlgorithm : ℕ → ℕ
--   | 0 => 1
--   | n =>
--     let z := Finset.image (fun ⟨x, h⟩  => PartitionsAlgorithm x) (Finset.range n).attach
--     z.card
-- termination_by n => n
-- decreasing_by
--   exact List.mem_range.mp h



-- --     1
-- --   else
-- --     let z := List.map PartitionsAlgorithm (List.range n)
-- --     (Nat.iterate (step' id) n ⟨0, n - 1, 0⟩).1
-- -- termination_by n
-- -- decreasing_by
-- --   sorry
