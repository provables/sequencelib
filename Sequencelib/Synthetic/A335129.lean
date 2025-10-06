/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335129 sequence
-/

namespace Sequence

@[OEIS := A335129, offset := 3, maxIndex := 69, derive := true]
def A335129 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| if (x % 3) ≤ 0 then comprN (λ (x : ℤ) ↦ 0) (x - 1) else x

end Sequence