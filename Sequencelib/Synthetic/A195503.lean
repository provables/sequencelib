/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195503 sequence
-/

namespace Sequence

@[OEIS := A195503, offset := 1, maxIndex := 24, derive := true]
def A195503 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) (1 + x) 1 0

end Sequence