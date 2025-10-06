/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155599 sequence
-/

namespace Sequence

@[OEIS := A155599, offset := 0, maxIndex := 19, derive := true]
def A155599 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x - 1) + x) x (loop (λ (x _y) ↦ x + x) (x + x) 1)

end Sequence