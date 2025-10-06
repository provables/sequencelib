/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059302 sequence
-/

namespace Sequence

@[OEIS := A059302, offset := 2, maxIndex := 100, derive := true]
def A059302 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop (λ (x y) ↦ (((y * y) - 1) * (2 + y)) + x) x 0 / 2) - 1

end Sequence