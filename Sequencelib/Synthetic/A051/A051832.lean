/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051832 sequence
-/

namespace Sequence

@[OEIS := A051832, offset := 1, maxIndex := 4, derive := true]
def A051832 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ x + y) (x * x) 0 x - x

end Sequence