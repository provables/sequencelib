/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A281362 sequence
-/

namespace Sequence

@[OEIS := A281362, offset := 0, maxIndex := 100, derive := true]
def A281362 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) x 2 2 - x) / 2

end Sequence