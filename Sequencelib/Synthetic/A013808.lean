/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013808 sequence
-/

namespace Sequence

@[OEIS := A013808, offset := 0, maxIndex := 8, derive := true]
def A013808 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * loop (λ (x _y) ↦ (x + x) + x) 2 x) (1 + (2 * (x + x))) 1

end Sequence