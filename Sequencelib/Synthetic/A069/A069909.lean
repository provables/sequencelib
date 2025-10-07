/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069909 sequence
-/

namespace Sequence

@[OEIS := A069909, offset := 0, maxIndex := 60, derive := true]
def A069909 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ ((loop (λ (x _y) ↦ (x - 1) / (2 - (x % 2))) 2 x / 2) + x) % 2) x

end Sequence