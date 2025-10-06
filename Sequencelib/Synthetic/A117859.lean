/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117859 sequence
-/

namespace Sequence

@[OEIS := A117859, offset := 1, maxIndex := 28, derive := true]
def A117859 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) (x / 2) 3

end Sequence