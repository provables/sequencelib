/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194408 sequence
-/

namespace Sequence

@[OEIS := A194408, offset := 1, maxIndex := 67, derive := true]
def A194408 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (((((((x / 2) / 2) / 2) + 1) * (2 * (1 + 2))) + 1) / (x + 1))) x

end Sequence