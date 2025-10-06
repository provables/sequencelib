/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245762 sequence
-/

namespace Sequence

@[OEIS := A245762, offset := 1, maxIndex := 6, derive := true]
def A245762 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x y) ↦ (loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y 1 1 + x) + x) x 2 / 2) / 2) + 2) * (2 + x)) / 2) - 1

end Sequence