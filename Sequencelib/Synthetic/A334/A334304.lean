/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A334304 sequence
-/

namespace Sequence

@[OEIS := A334304, offset := 0, maxIndex := 3, derive := true]
def A334304 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 1 + loop (λ (x _y) ↦ x + x) x 1) x 1 - x * x) - x

end Sequence