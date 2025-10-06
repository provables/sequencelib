/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033355 sequence
-/

namespace Sequence

@[OEIS := A033355, offset := 1, maxIndex := 92, derive := true]
def A033355 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (x + x) + y) x x) 2 1 / (1 + x)

end Sequence