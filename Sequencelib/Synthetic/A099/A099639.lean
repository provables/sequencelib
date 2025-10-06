/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099639 sequence
-/

namespace Sequence

@[OEIS := A099639, offset := 1, maxIndex := 8, derive := true]
def A099639 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x _y) ↦ (2 * ((2 * (x + x)) + x)) + 1) x 1) / 2

end Sequence