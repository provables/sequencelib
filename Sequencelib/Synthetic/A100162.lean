/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100162 sequence
-/

namespace Sequence

@[OEIS := A100162, offset := 1, maxIndex := 32, derive := true]
def A100162 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (1 + (x + x)) - (x * x) * x

end Sequence