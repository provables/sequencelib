/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327146 sequence
-/

namespace Sequence

@[OEIS := A327146, offset := 0, maxIndex := 5, derive := true]
def A327146 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x y) ↦ x * y) x 1) / 2) + 1) / 2) / 2) + x) / 2) / 2) / 2

end Sequence