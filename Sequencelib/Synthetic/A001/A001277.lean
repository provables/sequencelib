/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001277 sequence
-/

namespace Sequence

@[OEIS := A001277, offset := 2, maxIndex := 23, derive := true]
def A001277 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (loop (λ (x _y) ↦ (-x)) y 1 + x * (y + 1)) + x) y 1 + x) x 1

end Sequence