/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255896 sequence
-/

namespace Sequence

@[OEIS := A255896, offset := 10, maxIndex := 14, derive := true]
def A255896 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) ((2 * ((2 * (1 + x)) + x)) + x) 1 % loop (λ (x _y) ↦ ((1 + x) + x) + x) 2 x

end Sequence