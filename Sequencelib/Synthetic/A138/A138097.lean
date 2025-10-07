/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138097 sequence
-/

namespace Sequence

@[OEIS := A138097, offset := 1, maxIndex := 17, derive := true]
def A138097 (n : ℕ) : ℤ :=
  let x := n - 1
  (((comprN (λ (x) ↦ (loop (λ (x _y) ↦ x / (1 + (x % 3))) x x + 2) % 2) x + 1) / 2) + 1) + x

end Sequence