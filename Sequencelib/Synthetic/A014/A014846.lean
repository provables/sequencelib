/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014846 sequence
-/

namespace Sequence

@[OEIS := A014846, offset := 1, maxIndex := 32, derive := true]
def A014846 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ x - y) (1 + x) (loop (λ (x _y) ↦ x + x) x 1)

end Sequence