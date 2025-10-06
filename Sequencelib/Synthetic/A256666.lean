/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256666 sequence
-/

namespace Sequence

@[OEIS := A256666, offset := 0, maxIndex := 100, derive := true]
def A256666 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (loop (λ (x y) ↦ x + y) y 0 * y) - x) (1 + x) 0 + x) - 1

end Sequence