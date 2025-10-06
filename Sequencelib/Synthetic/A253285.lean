/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253285 sequence
-/

namespace Sequence

@[OEIS := A253285, offset := 0, maxIndex := 30, derive := true]
def A253285 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ loop (λ (x y) ↦ (y * y) + x) (1 + y) x) x 1 * (1 + x)) * 2) * x

end Sequence