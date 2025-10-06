/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180671 sequence
-/

namespace Sequence

@[OEIS := A180671, offset := 0, maxIndex := 50, derive := true]
def A180671 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) y 2 1 + x) x x

end Sequence