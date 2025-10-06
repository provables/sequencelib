/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250605 sequence
-/

namespace Sequence

@[OEIS := A250605, offset := 1, maxIndex := 100, derive := true]
def A250605 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ 2 * (2 + (2 + x))) (2 + x) 1 - 2) + (2 + x) * x) - x

end Sequence