/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199492 sequence
-/

namespace Sequence

@[OEIS := A199492, offset := 0, maxIndex := 100, derive := true]
def A199492 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y) ↦ ((2 * ((x + x) + x)) - 1) + x) x 2) * 3

end Sequence