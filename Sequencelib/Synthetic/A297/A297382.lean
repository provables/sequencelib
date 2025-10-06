/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A297382 sequence
-/

namespace Sequence

@[OEIS := A297382, offset := 1, maxIndex := 100, derive := true]
def A297382 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if loop (λ (x y) ↦ (x - 1) % y) x 0 ≤ 0 then 2 else 1

end Sequence