/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021033 sequence
-/

namespace Sequence

@[OEIS := A021033, offset := 0, maxIndex := 98, derive := true]
def A021033 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 1 % loop (λ (x y) ↦ 1 + ((2 + y) * x)) 2 2) / 3

end Sequence