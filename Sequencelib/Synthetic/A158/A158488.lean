/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158488 sequence
-/

namespace Sequence

@[OEIS := A158488, offset := 1, maxIndex := 100, derive := true]
def A158488 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) + y) * 4) (λ (_x _y) ↦ 2) 2 1 x

end Sequence