/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A224329 sequence
-/

namespace Sequence

@[OEIS := A224329, offset := 1, maxIndex := 100, derive := true]
def A224329 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * (loop (λ (x _y) ↦ (2 * (x + x)) + x) x 2 - 1)

end Sequence