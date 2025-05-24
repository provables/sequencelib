/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The sequence of the number of partition of `n`; i.e., 1, 1, 2, 3, 5, 7, 11, ...
-/
@[OEIS := A000041, offset := 0]
noncomputable def partitions (n : ℕ) := Nat.card (Nat.Partition n)

#check Nat.Partition.UniquePartitionZero

#check Nat.Partition

theorem partitions_zero : partitions 0 = 1 := by
  unfold partitions
  simp

theorem partitions_one : partitions 1 = 1 := by
  unfold partitions
  simp
