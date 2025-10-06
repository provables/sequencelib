/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011919 sequence
-/

namespace Sequence

@[OEIS := A011919, offset := 0, maxIndex := 42, derive := true]
def A011919 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((y * y) - y) + x) (x - 2) 0 * x) / 3

end Sequence