/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A322796 sequence
-/

namespace Sequence

@[OEIS := A322796, offset := 0, maxIndex := 100, derive := true]
def A322796 (x : ℕ) : ℤ :=
  (((1 + (2 * (x * loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 2 1))) % 3) - 1) * (x % 2)

end Sequence