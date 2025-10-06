/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156232 sequence
-/

namespace Sequence

@[OEIS := A156232, offset := 2, maxIndex := 100, derive := true]
def A156232 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ x + x) x 2 - loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 2 0

end Sequence