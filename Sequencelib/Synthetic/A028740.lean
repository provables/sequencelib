/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028740 sequence
-/

namespace Sequence

@[OEIS := A028740, offset := 1, maxIndex := 16, derive := true]
def A028740 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (x + y) / (2 + y)) 2 x + x) * 3) / 2) + 2

end Sequence