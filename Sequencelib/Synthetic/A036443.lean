/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036443 sequence
-/

namespace Sequence

@[OEIS := A036443, offset := 0, maxIndex := 13, derive := true]
def A036443 (x : ℕ) : ℕ :=
  Int.toNat <| (((x - 1) + loop (λ (x _y) ↦ x * x) 2 (x - 1)) / 2) / loop (λ (x _y) ↦ x + x) x 1

end Sequence