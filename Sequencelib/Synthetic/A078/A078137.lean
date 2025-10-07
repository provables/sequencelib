/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078137 sequence
-/

namespace Sequence

@[OEIS := A078137, offset := 1, maxIndex := 70, derive := true]
def A078137 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (((2 * 4) * (x % 4)) - x) + 1) x

end Sequence