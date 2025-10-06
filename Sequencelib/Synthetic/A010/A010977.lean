/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010977 sequence
-/

namespace Sequence

@[OEIS := A010977, offset := 24, maxIndex := 100, derive := true]
def A010977 (n : ℕ) : ℕ :=
  let x := n - 24
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) 4 x / y) + x) x 1

end Sequence