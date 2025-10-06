/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292696 sequence
-/

namespace Sequence

@[OEIS := A292696, offset := 0, maxIndex := 50, derive := true]
def A292696 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (x + x) 2 1 - loop (λ (x _y) ↦ (-x)) x 3

end Sequence