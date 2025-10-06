/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094821 sequence
-/

namespace Sequence

@[OEIS := A094821, offset := 1, maxIndex := 50, derive := true]
def A094821 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ 2 * ((x - y) + x)) (λ (x _y) ↦ x) y 1 0 + x) + x) x 2 / 2

end Sequence