/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A320674 sequence
-/

namespace Sequence

@[OEIS := A320674, offset := 1, maxIndex := 48, derive := true]
def A320674 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) ((y / 3) - 1) 1 + x) x 1 * 2

end Sequence