/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A304487 sequence
-/

namespace Sequence

@[OEIS := A304487, offset := 1, maxIndex := 43, derive := true]
def A304487 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((2 * (y * y)) + x) + y) x 1 + x / 2

end Sequence