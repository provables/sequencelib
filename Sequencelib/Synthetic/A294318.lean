/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A294318 sequence
-/

namespace Sequence

@[OEIS := A294318, offset := 0, maxIndex := 7, derive := true]
def A294318 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x * y) + x) ((y + y) + y) x) x 1

end Sequence