/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256832 sequence
-/

namespace Sequence

@[OEIS := A256832, offset := 1, maxIndex := 15, derive := true]
def A256832 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) y x 0) x 1

end Sequence