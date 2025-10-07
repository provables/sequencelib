/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A061094 sequence
-/

namespace Sequence

@[OEIS := A061094, offset := 1, maxIndex := 71, derive := true]
def A061094 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (loop (λ (x _y) ↦ x + x) (x % 4) 1 * 2) - x) x - 1

end Sequence