/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110426 sequence
-/

namespace Sequence

@[OEIS := A110426, offset := 1, maxIndex := 100, derive := true]
def A110426 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x _y) ↦ (((loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ y) x 1 2 - x * x) + 1) - x) / 2) 2 x + x) + 1

end Sequence