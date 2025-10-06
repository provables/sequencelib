/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097083 sequence
-/

namespace Sequence

@[OEIS := A097083, offset := 1, maxIndex := 50, derive := true]
def A097083 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) y 2 1 + x) / 2) x 1

end Sequence