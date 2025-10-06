/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151763 sequence
-/

namespace Sequence

@[OEIS := A151763, offset := 1, maxIndex := 100, derive := true]
def A151763 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ (x y) ↦ x * y) x x % (1 + x)) * loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 1 0

end Sequence