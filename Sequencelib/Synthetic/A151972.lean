/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151972 sequence
-/

namespace Sequence

@[OEIS := A151972, offset := 1, maxIndex := 61, derive := true]
def A151972 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x + y) y 0 * (x / 2)) + x) 2 x

end Sequence