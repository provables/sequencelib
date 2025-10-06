/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091130 sequence
-/

namespace Sequence

@[OEIS := A091130, offset := 1, maxIndex := 5, derive := true]
def A091130 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((y * y) - x) * (y / 2)) x 1

end Sequence