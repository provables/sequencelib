/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110881 sequence
-/

namespace Sequence

@[OEIS := A110881, offset := 1, maxIndex := 5, derive := true]
def A110881 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ ((((((x * x) - 1) / 4) + 2) / 2) * x) + x) 2 x / 2) / 2) + 1

end Sequence