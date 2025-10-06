/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173653 sequence
-/

namespace Sequence

@[OEIS := A173653, offset := 0, maxIndex := 52, derive := true]
def A173653 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x * x) / (1 + 4)) 1 y / 2) + x) x 0

end Sequence