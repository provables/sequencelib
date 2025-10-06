/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082426 sequence
-/

namespace Sequence

@[OEIS := A082426, offset := 1, maxIndex := 22, derive := true]
def A082426 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x y) ↦ (x * y) + x) x (1 + x) / 2)

end Sequence