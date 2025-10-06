/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290074 sequence
-/

namespace Sequence

@[OEIS := A290074, offset := 0, maxIndex := 100, derive := true]
def A290074 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((2 + loop (λ (x _y) ↦ (-x)) x 1) * loop (λ (x _y) ↦ x + x) x 1) / 2) + 1) / 2) * 2) - 1

end Sequence