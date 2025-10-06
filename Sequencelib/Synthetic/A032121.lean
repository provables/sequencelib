/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032121 sequence
-/

namespace Sequence

@[OEIS := A032121, offset := 0, maxIndex := 100, derive := true]
def A032121 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) x (1 + (x % 2)) + loop (λ (x _y) ↦ (x * 2) * 2) x 1) / 2

end Sequence