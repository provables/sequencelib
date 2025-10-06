/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348589 sequence
-/

namespace Sequence

@[OEIS := A348589, offset := 1, maxIndex := 14, derive := true]
def A348589 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 1 (loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x)) x 1 + 1) * 2) * 3

end Sequence