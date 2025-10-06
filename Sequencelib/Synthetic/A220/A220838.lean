/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220838 sequence
-/

namespace Sequence

@[OEIS := A220838, offset := 1, maxIndex := 100, derive := true]
def A220838 (n : ℕ) : ℤ :=
  let x := n - 1
  ((((loop (λ (x y) ↦ (((y / 2) - x % 2) / 2) + x) x 0 * 2) + x) - 1) / 2) / 2

end Sequence