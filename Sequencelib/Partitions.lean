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
