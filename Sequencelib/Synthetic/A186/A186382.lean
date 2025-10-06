/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186382 sequence
-/

namespace Sequence

@[OEIS := A186382, offset := 1, maxIndex := 89, derive := true]
def A186382 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (((loop (λ (x y) ↦ x + y) x x / 2) / 2) + x)

end Sequence