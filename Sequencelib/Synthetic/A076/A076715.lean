/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076715 sequence
-/

namespace Sequence

@[OEIS := A076715, offset := 1, maxIndex := 9, derive := true]
def A076715 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x _y) ↦ x * x) 1 (loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (x + x) 1 0) / 2) / 2

end Sequence