/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191968 sequence
-/

namespace Sequence

@[OEIS := A191968, offset := 1, maxIndex := 25, derive := true]
def A191968 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (2 * loop (λ (x _y) ↦ (1 + x) + x) 2 x) 1 2

end Sequence