/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003452 sequence
-/

namespace Sequence

@[OEIS := A003452, offset := 5, maxIndex := 100, derive := true]
def A003452 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((loop (λ (x y) ↦ 2 + ((y / 2) + x)) (1 + x) 1 - 1) + 2) * (x + 1)) / 2

end Sequence