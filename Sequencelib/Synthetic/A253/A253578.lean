/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253578 sequence
-/

namespace Sequence

@[OEIS := A253578, offset := 1, maxIndex := 2, derive := true]
def A253578 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * (1 + x)) (x + x) 1) x 2 + 1

end Sequence