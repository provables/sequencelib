/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213823 sequence
-/

namespace Sequence

@[OEIS := A213823, offset := 1, maxIndex := 100, derive := true]
def A213823 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((1 + x) * (loop (λ (x y) ↦ ((2 + y) * x) + 2) 2 x - 1)) - 1) * (1 + x)) / 2

end Sequence