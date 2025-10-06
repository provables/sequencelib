/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060001 sequence
-/

namespace Sequence

@[OEIS := A060001, offset := 1, maxIndex := 13, derive := true]
def A060001 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ x * y) (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) 1

end Sequence