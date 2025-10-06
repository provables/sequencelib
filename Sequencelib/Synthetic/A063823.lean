/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063823 sequence
-/

namespace Sequence

@[OEIS := A063823, offset := 0, maxIndex := 36, derive := true]
def A063823 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + loop (λ (x _y) ↦ (x - ((x / 2) % 2)) + x) x 1) / 4) + 1

end Sequence