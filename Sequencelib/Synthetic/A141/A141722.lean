/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141722 sequence
-/

namespace Sequence

@[OEIS := A141722, offset := 0, maxIndex := 100, derive := true]
def A141722 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * loop (λ (x _y) ↦ 2 * (2 + x)) (x + x) 0)

end Sequence