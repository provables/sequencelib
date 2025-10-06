/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A328034 sequence
-/

namespace Sequence

@[OEIS := A328034, offset := 1, maxIndex := 79, derive := true]
def A328034 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 + (x % y)) (2 + ((x + x) + x)) 0 / 2

end Sequence