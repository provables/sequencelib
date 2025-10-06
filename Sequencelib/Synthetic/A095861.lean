/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095861 sequence
-/

namespace Sequence

@[OEIS := A095861, offset := 1, maxIndex := 100, derive := true]
def A095861 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y / (1 + x)) + x / 2) x 0 / 2

end Sequence