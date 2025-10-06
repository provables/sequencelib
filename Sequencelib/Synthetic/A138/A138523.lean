/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138523 sequence
-/

namespace Sequence

@[OEIS := A138523, offset := 1, maxIndex := 50, derive := true]
def A138523 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x * y) + x) (y + y) 1 + x) x 1

end Sequence