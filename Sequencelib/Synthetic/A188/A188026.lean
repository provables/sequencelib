/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188026 sequence
-/

namespace Sequence

@[OEIS := A188026, offset := 1, maxIndex := 71, derive := true]
def A188026 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x y) ↦ (((y * y) + x) / (1 + x)) + y) x 1 * 2) - 1) + 2) + x) * 2) - 1) * 2) - 2) + x

end Sequence