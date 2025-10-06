/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198410 sequence
-/

namespace Sequence

@[OEIS := A198410, offset := 2, maxIndex := 100, derive := true]
def A198410 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x _y) ↦ (x + x) + x) x 1) * 3) + 1

end Sequence