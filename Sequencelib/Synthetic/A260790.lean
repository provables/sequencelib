/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260790 sequence
-/

namespace Sequence

@[OEIS := A260790, offset := 2, maxIndex := 7, derive := true]
def A260790 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ ((loop (λ (_x y) ↦ y * y) x 0 + 1) * 2) / (1 + x)) x x + 2

end Sequence