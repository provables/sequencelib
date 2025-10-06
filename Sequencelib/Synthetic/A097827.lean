/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097827 sequence
-/

namespace Sequence

@[OEIS := A097827, offset := 0, maxIndex := 16, derive := true]
def A097827 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (loop (λ (x y) ↦ (2 + y) * x) 2 x - y)) (λ (x _y) ↦ x) x 1 0

end Sequence