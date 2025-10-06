/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047497 sequence
-/

namespace Sequence

@[OEIS := A047497, offset := 1, maxIndex := 100, derive := true]
def A047497 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y - ((x / 2) / 2)) + y) x 1

end Sequence