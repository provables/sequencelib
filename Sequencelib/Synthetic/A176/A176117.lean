/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176117 sequence
-/

namespace Sequence

@[OEIS := A176117, offset := 1, maxIndex := 3, derive := true]
def A176117 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((x * x) - y) + x) ((x - 1) + x) 2

end Sequence