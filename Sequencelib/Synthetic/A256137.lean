/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256137 sequence
-/

namespace Sequence

@[OEIS := A256137, offset := 2, maxIndex := 100, derive := true]
def A256137 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((loop (λ (x _y) ↦ ((1 - ((x / 2) % 2)) + x % 2) * 2) x 1 + 1) + 1) + x * x) / 2) + x

end Sequence