/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037966 sequence
-/

namespace Sequence

@[OEIS := A037966, offset := 0, maxIndex := 100, derive := true]
def A037966 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * ((x - (x / y)) + x)) (x - 1) x * x

end Sequence