/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151383 sequence
-/

namespace Sequence

@[OEIS := A151383, offset := 0, maxIndex := 21, derive := true]
def A151383 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 2 * ((x - (x / y)) + x)) x 1 / (1 + x)) * loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence