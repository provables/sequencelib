/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013906 sequence
-/

namespace Sequence

@[OEIS := A013906, offset := 0, maxIndex := 8, derive := true]
def A013906 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ x * y) 4 x - x) (1 + (x + ((x + x) * 2))) 1

end Sequence