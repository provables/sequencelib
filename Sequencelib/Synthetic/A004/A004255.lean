/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004255 sequence
-/

namespace Sequence

@[OEIS := A004255, offset := 1, maxIndex := 100, derive := true]
def A004255 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ x + y) (loop (λ (x y) ↦ x + y) x 0) x

end Sequence