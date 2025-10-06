/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067705 sequence
-/

namespace Sequence

@[OEIS := A067705, offset := 1, maxIndex := 100, derive := true]
def A067705 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 + x)) * (loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * (1 + x))

end Sequence