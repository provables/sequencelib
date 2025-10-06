/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058224 sequence
-/

namespace Sequence

@[OEIS := A058224, offset := 1, maxIndex := 75, derive := true]
def A058224 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y / (x * (2 + (x % 2)))) + x) x 1

end Sequence