/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A328286 sequence
-/

namespace Sequence

@[OEIS := A328286, offset := 1, maxIndex := 21, derive := true]
def A328286 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ x) x 1 1 * loop (λ (x y) ↦ x * y) x 1) / loop (λ (x _y) ↦ 2 * x) x 1

end Sequence