/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088938 sequence
-/

namespace Sequence

@[OEIS := A088938, offset := 1, maxIndex := 24, derive := true]
def A088938 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) (y - 1) 1 + x) x 0 * (1 + x)) / 2) + 2

end Sequence