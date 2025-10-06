/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184583 sequence
-/

namespace Sequence

@[OEIS := A184583, offset := 1, maxIndex := 100, derive := true]
def A184583 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ ((y * y) / x) + y) (1 + (x + x)) 1 / 2) + 1) + x

end Sequence