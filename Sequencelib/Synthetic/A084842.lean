/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084842 sequence
-/

namespace Sequence

@[OEIS := A084842, offset := 4, maxIndex := 11, derive := true]
def A084842 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (y + y)) (λ (x _y) ↦ 2 + x) x 2 2 / 2

end Sequence