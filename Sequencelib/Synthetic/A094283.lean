/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094283 sequence
-/

namespace Sequence

@[OEIS := A094283, offset := 1, maxIndex := 29, derive := true]
def A094283 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 + (3 / y)) * x) x 1

end Sequence