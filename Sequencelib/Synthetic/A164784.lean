/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164784 sequence
-/

namespace Sequence

@[OEIS := A164784, offset := 1, maxIndex := 100, derive := true]
def A164784 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ 1 + ((1 + x) * y)) 3 x) x 1

end Sequence