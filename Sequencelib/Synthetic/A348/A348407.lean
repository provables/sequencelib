/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348407 sequence
-/

namespace Sequence

@[OEIS := A348407, offset := 0, maxIndex := 32, derive := true]
def A348407 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ (y + x) + y) (λ (x _y) ↦ x) y 1 0 + x) + x) x 4

end Sequence