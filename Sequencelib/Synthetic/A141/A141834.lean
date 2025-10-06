/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141834 sequence
-/

namespace Sequence

@[OEIS := A141834, offset := 3, maxIndex := 20, derive := true]
def A141834 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ 1 + ((y * x) + x)) (1 + x) 2 - 2) * (2 + x)

end Sequence