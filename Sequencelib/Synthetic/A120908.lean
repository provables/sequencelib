/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120908 sequence
-/

namespace Sequence

@[OEIS := A120908, offset := 1, maxIndex := 24, derive := true]
def A120908 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 + y) * x) (λ (_x _y) ↦ 1) x x 2

end Sequence