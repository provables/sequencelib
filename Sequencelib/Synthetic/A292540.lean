/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292540 sequence
-/

namespace Sequence

@[OEIS := A292540, offset := 1, maxIndex := 25, derive := true]
def A292540 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 2 * (x + y)) (λ (_x _y) ↦ 1) (x + x) 2 2 + 2

end Sequence