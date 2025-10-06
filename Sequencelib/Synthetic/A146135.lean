/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A146135 sequence
-/

namespace Sequence

@[OEIS := A146135, offset := 1, maxIndex := 16, derive := true]
def A146135 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ (x - (x % 4)) + x) 2 x * 2) * 2) + 1

end Sequence