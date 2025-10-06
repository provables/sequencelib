/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113541 sequence
-/

namespace Sequence

@[OEIS := A113541, offset := 1, maxIndex := 100, derive := true]
def A113541 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (loop (λ (x _y) ↦ x * x) 2 2 + y)) (λ (x _y) ↦ x) x 1 0 + x

end Sequence