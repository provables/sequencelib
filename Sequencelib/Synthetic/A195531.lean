/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195531 sequence
-/

namespace Sequence

@[OEIS := A195531, offset := 1, maxIndex := 24, derive := true]
def A195531 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) y 2 2 - x) (1 + x) 1

end Sequence