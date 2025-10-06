/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A304810 sequence
-/

namespace Sequence

@[OEIS := A304810, offset := 0, maxIndex := 100, derive := true]
def A304810 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x _y) ↦ ((((((1 + (x / 2)) * (x / 3)) + 1) % 2) + 1) + x) + 1) x 1 + 2) / 2) + 2) + x) / 2

end Sequence