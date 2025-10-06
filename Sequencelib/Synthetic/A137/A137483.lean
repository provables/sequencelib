/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137483 sequence
-/

namespace Sequence

@[OEIS := A137483, offset := 0, maxIndex := 100, derive := true]
def A137483 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 3 * (1 - x)) (x + x) 2

end Sequence