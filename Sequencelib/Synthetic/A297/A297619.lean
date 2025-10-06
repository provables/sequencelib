/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A297619 sequence
-/

namespace Sequence

@[OEIS := A297619, offset := 1, maxIndex := 50, derive := true]
def A297619 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y 2 0 + x) * 2) x 0

end Sequence