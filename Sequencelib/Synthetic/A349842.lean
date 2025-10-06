/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A349842 sequence
-/

namespace Sequence

@[OEIS := A349842, offset := 0, maxIndex := 35, derive := true]
def A349842 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y) ↦ (x - (((x / 2) / 2) % 2)) + x) x 2) / 3

end Sequence