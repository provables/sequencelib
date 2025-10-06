/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075319 sequence
-/

namespace Sequence

@[OEIS := A075319, offset := 1, maxIndex := 55, derive := true]
def A075319 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 * 2) + x) * 2

end Sequence