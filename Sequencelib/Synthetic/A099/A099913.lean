/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099913 sequence
-/

namespace Sequence

@[OEIS := A099913, offset := 0, maxIndex := 18, derive := true]
def A099913 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (1 + (2 * ((2 * (x + x)) + x))) + x % 2) x 0 * 2) + 1

end Sequence