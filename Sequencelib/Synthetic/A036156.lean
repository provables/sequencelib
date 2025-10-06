/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036156 sequence
-/

namespace Sequence

@[OEIS := A036156, offset := 0, maxIndex := 48, derive := true]
def A036156 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * (x + x)) + x) x 1 % (loop (λ (x _y) ↦ ((3 + x) * x) + x) 2 2 + 1)

end Sequence