/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049008 sequence
-/

namespace Sequence

@[OEIS := A049008, offset := 3, maxIndex := 74, derive := true]
def A049008 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x y) ↦ (((loop (λ (x _y) ↦ x * x) 2 2 - x) / 2) + 1) - y) x 2 / 2) + x

end Sequence