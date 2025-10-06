/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077616 sequence
-/

namespace Sequence

@[OEIS := A077616, offset := 1, maxIndex := 100, derive := true]
def A077616 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + y)) + x) (λ (_x _y) ↦ 0) x 1 x * (1 + x)

end Sequence