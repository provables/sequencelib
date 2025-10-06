/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085010 sequence
-/

namespace Sequence

@[OEIS := A085010, offset := 0, maxIndex := 8, derive := true]
def A085010 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x * y)) (λ (_x y) ↦ y * y) x 1 2

end Sequence