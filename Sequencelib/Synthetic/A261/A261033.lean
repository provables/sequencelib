/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261033 sequence
-/

namespace Sequence

@[OEIS := A261033, offset := 1, maxIndex := 5, derive := true]
def A261033 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 * (loop (λ (_x y) ↦ y) (x - 2) 1 + x))

end Sequence