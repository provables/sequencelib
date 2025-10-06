/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253103 sequence
-/

namespace Sequence

@[OEIS := A253103, offset := 2, maxIndex := 23, derive := true]
def A253103 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (loop2 (λ (x y) ↦ (y + x) + y) (λ (x _y) ↦ x) x 1 1)

end Sequence