/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A230018 sequence
-/

namespace Sequence

@[OEIS := A230018, offset := 1, maxIndex := 38, derive := true]
def A230018 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x _y) ↦ x * x) 1 (3 * (1 + x)) + 2) + 1) + 2) * (1 + x)) / 2

end Sequence