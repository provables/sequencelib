/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085437 sequence
-/

namespace Sequence

@[OEIS := A085437, offset := 0, maxIndex := 15, derive := true]
def A085437 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x y) ↦ ((y * y) * y) + x) y x) x 0

end Sequence