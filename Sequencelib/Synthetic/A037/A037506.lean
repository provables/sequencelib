/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037506 sequence
-/

namespace Sequence

@[OEIS := A037506, offset := 1, maxIndex := 22, derive := true]
def A037506 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((y % 3) + x) + x) * 2) + x) (x + 1) 0 / 2

end Sequence