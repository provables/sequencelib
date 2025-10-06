/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173574 sequence
-/

namespace Sequence

@[OEIS := A173574, offset := 1, maxIndex := 6, derive := true]
def A173574 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((2 + x) * x)) (((x - 2) - 1) - 1) (1 + x)

end Sequence