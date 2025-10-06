/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105926 sequence
-/

namespace Sequence

@[OEIS := A105926, offset := 0, maxIndex := 100, derive := true]
def A105926 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ loop (λ (x _y) ↦ (-x)) y 1 + x * y) x 1 * x) - loop (λ (x _y) ↦ (-x)) x 1

end Sequence