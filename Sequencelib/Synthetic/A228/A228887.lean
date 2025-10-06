/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228887 sequence
-/

namespace Sequence

@[OEIS := A228887, offset := 1, maxIndex := 100, derive := true]
def A228887 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((y * y) + x) + y) (2 + ((x + x) + x)) 0 / 2

end Sequence