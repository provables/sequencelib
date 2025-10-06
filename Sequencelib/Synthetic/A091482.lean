/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091482 sequence
-/

namespace Sequence

@[OEIS := A091482, offset := 0, maxIndex := 16, derive := true]
def A091482 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 3 * (x * y)) (λ (_x y) ↦ y) x 1 x

end Sequence