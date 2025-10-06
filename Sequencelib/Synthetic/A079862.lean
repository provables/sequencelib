/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079862 sequence
-/

namespace Sequence

@[OEIS := A079862, offset := 10, maxIndex := 100, derive := true]
def A079862 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (2 + (loop (λ (x _y) ↦ x * x) 2 2 + x))

end Sequence