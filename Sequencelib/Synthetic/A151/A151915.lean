/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151915 sequence
-/

namespace Sequence

@[OEIS := A151915, offset := 1, maxIndex := 100, derive := true]
def A151915 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 - 1) + x) 2 x + 1

end Sequence