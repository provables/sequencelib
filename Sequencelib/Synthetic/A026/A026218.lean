/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026218 sequence
-/

namespace Sequence

@[OEIS := A026218, offset := 1, maxIndex := 63, derive := true]
def A026218 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x _y) ↦ if x ≤ 0 then 1 else (x - 2) % 4) 2 x + x) x x / 2) + 1

end Sequence