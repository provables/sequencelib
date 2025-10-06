/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037606 sequence
-/

namespace Sequence

@[OEIS := A037606, offset := 1, maxIndex := 21, derive := true]
def A037606 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((2 * ((x + x) + x)) + x % 3)) x 1

end Sequence