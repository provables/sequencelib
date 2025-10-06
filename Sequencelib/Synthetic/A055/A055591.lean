/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055591 sequence
-/

namespace Sequence

@[OEIS := A055591, offset := 0, maxIndex := 4, derive := true]
def A055591 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ (x + x) + x) x 1 + x) x 0

end Sequence