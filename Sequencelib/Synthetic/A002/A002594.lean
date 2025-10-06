/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002594 sequence
-/

namespace Sequence

@[OEIS := A002594, offset := 1, maxIndex := 100, derive := true]
def A002594 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((loop (λ (x y) ↦ ((2 * (x + x)) / y) + x) (x + x) 1 * x) + 1) * 2) - 1) * 2) - 1) * 2) - 1) + x) * (1 + x)

end Sequence