/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158373 sequence
-/

namespace Sequence

@[OEIS := A158373, offset := 1, maxIndex := 100, derive := true]
def A158373 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ x * x) 2 (1 + 4) * (1 + x)) - 2) * (1 + x)

end Sequence