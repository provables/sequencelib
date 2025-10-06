/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187341 sequence
-/

namespace Sequence

@[OEIS := A187341, offset := 1, maxIndex := 61, derive := true]
def A187341 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (x + y) * x) 2 2 - 2) * (1 + x)) + x) / (loop (λ (x _y) ↦ x * x) 2 2 + 1)

end Sequence