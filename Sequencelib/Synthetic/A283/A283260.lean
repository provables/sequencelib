/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A283260 sequence
-/

namespace Sequence

@[OEIS := A283260, offset := 1, maxIndex := 7, derive := true]
def A283260 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x * x) x (loop (λ (x y) ↦ (1 + y) * x) x 1)

end Sequence