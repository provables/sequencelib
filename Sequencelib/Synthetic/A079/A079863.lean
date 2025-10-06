/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079863 sequence
-/

namespace Sequence

@[OEIS := A079863, offset := 12, maxIndex := 100, derive := true]
def A079863 (n : ℕ) : ℕ :=
  let x := n - 12
  Int.toNat <| loop (λ (x _y) ↦ x + x) x ((2 * (loop (λ (x _y) ↦ x * x) 2 2 + 1)) + x)

end Sequence