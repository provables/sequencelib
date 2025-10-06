/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096124 sequence
-/

namespace Sequence

@[OEIS := A096124, offset := 2, maxIndex := 6, derive := true]
def A096124 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ (((2 + y) * x) + x) / 2) x 1 + x) + x * x

end Sequence