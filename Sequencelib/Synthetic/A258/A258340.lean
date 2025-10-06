/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258340 sequence
-/

namespace Sequence

@[OEIS := A258340, offset := 1, maxIndex := 22, derive := true]
def A258340 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) y 1 + x) + 1) + x) + x) x 2 / 2

end Sequence