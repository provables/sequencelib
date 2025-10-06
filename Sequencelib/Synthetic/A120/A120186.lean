/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120186 sequence
-/

namespace Sequence

@[OEIS := A120186, offset := 1, maxIndex := 65, derive := true]
def A120186 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y) ↦ 1 + ((x / (1 + (2 + 4))) + x)) x 0 / 2) / 2) / 2) + 1

end Sequence