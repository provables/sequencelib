/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136859 sequence
-/

namespace Sequence

@[OEIS := A136859, offset := 1, maxIndex := 59, derive := true]
def A136859 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((x + x) + x) / (1 + (y % 2))) + x) x 1 / 2

end Sequence