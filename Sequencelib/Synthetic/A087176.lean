/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087176 sequence
-/

namespace Sequence

@[OEIS := A087176, offset := 2, maxIndex := 8, derive := true]
def A087176 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((loop (λ (_x _y) ↦ 2 * 4) (x - 1) x + 1) / (x + 1)) + x) + 2) + 2

end Sequence