/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133767 sequence
-/

namespace Sequence

@[OEIS := A133767, offset := 0, maxIndex := 30, derive := true]
def A133767 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 1 (2 * (2 + (x + x))) - 1) * (loop (λ (x _y) ↦ (2 + x) + x) 2 x + 1)

end Sequence