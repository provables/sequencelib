/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010398 sequence
-/

namespace Sequence

@[OEIS := A010398, offset := 1, maxIndex := 19, derive := true]
def A010398 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x _y) ↦ ((x * x) * x) % (1 + (2 * (2 + loop (λ (x _y) ↦ x * x) 2 2)))) 2 (x * x) / 2) x

end Sequence