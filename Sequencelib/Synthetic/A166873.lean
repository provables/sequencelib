/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166873 sequence
-/

namespace Sequence

@[OEIS := A166873, offset := 1, maxIndex := 44, derive := true]
def A166873 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (1 + y) * (2 + x)) 2 x * x) + 1

end Sequence