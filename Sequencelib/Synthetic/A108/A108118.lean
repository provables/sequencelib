/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108118 sequence
-/

namespace Sequence

@[OEIS := A108118, offset := 1, maxIndex := 66, derive := true]
def A108118 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y % 4) + x) (λ (x _y) ↦ (-x)) x 1 1

end Sequence