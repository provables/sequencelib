/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A201219 sequence
-/

namespace Sequence

@[OEIS := A201219, offset := 1, maxIndex := 100, derive := true]
def A201219 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if loop (λ (x y) ↦ (x - 1) % y) x 0 ≤ 0 then x % 2 else 2

end Sequence