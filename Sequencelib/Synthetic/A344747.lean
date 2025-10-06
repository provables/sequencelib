/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344747 sequence
-/

namespace Sequence

@[OEIS := A344747, offset := 1, maxIndex := 29, derive := true]
def A344747 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ 2 * ((x + x) + x)) x 0 1

end Sequence