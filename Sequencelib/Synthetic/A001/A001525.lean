/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001525 sequence
-/

namespace Sequence

@[OEIS := A001525, offset := 1, maxIndex := 98, derive := true]
def A001525 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 + y) * x) ((x + x) + x) 1 / loop (λ (x y) ↦ x * y) x 1

end Sequence