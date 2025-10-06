/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013864 sequence
-/

namespace Sequence

@[OEIS := A013864, offset := 0, maxIndex := 8, derive := true]
def A013864 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x) 1

end Sequence