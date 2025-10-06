/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028694 sequence
-/

namespace Sequence

@[OEIS := A028694, offset := 0, maxIndex := 36, derive := true]
def A028694 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (2 * (x + x)) + x) (y * 2) x - x) x 1

end Sequence