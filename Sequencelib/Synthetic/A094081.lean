/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094081 sequence
-/

namespace Sequence

@[OEIS := A094081, offset := 0, maxIndex := 28, derive := true]
def A094081 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ 1 + (x + x)) 2 x + y) * x) + y) 2 x / 2

end Sequence