/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119617 sequence
-/

namespace Sequence

@[OEIS := A119617, offset := 1, maxIndex := 46, derive := true]
def A119617 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((y - 1) % 2) + 2) * ((y + y) + y)) + x) x 1

end Sequence