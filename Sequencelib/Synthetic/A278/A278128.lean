/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278128 sequence
-/

namespace Sequence

@[OEIS := A278128, offset := 0, maxIndex := 27, derive := true]
def A278128 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x _y) ↦ ((2 * 2) + x) * 2) (1 + x) 1 - 2) * 2) * 2) * 2) + 2) * 2

end Sequence