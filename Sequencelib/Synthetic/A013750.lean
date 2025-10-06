/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013750 sequence
-/

namespace Sequence

@[OEIS := A013750, offset := 0, maxIndex := 9, derive := true]
def A013750 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) (1 + ((x + x) + x)) 1

end Sequence