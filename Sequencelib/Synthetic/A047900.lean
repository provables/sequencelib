/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047900 sequence
-/

namespace Sequence

@[OEIS := A047900, offset := 1, maxIndex := 100, derive := true]
def A047900 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ ((2 * 4) + y) * x) (λ (_x _y) ↦ 2) x 2 0 * 2) * 2

end Sequence