/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171519 sequence
-/

namespace Sequence

@[OEIS := A171519, offset := 1, maxIndex := 50, derive := true]
def A171519 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ ((loop (λ (x y) ↦ ((y + y) / (2 + x)) + 1) (x + x) 1 * 2) + 2) / 2) 2 x + x) - 2

end Sequence