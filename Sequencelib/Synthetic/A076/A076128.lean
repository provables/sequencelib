/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076128 sequence
-/

namespace Sequence

@[OEIS := A076128, offset := 1, maxIndex := 20, derive := true]
def A076128 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) y y - y) + x) x 0 - x

end Sequence