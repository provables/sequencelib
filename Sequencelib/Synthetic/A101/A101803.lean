/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101803 sequence
-/

namespace Sequence

@[OEIS := A101803, offset := 0, maxIndex := 74, derive := true]
def A101803 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (x + x) 0 + 1) / 2) - x

end Sequence