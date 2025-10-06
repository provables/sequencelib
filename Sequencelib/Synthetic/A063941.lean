/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063941 sequence
-/

namespace Sequence

@[OEIS := A063941, offset := 0, maxIndex := 98, derive := true]
def A063941 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ 2 + (x * x)) 2 2 * x) + x) x 1 * (((2 * 4) * 2) + 1)

end Sequence