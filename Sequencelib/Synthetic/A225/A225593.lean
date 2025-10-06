/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225593 sequence
-/

namespace Sequence

@[OEIS := A225593, offset := 1, maxIndex := 72, derive := true]
def A225593 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (y - (((x / 2) / 2) / 2)) / 2) x 0 + x) - 1) / 2) + 2) / 2

end Sequence