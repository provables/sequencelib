/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136396 sequence
-/

namespace Sequence

@[OEIS := A136396, offset := 0, maxIndex := 43, derive := true]
def A136396 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (x - 1) x + x) * x) / 2) + 1) + x

end Sequence