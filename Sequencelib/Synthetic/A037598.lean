/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037598 sequence
-/

namespace Sequence

@[OEIS := A037598, offset := 1, maxIndex := 22, derive := true]
def A037598 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((x * 2) * 2) + x) (2 + x) 2 / loop (λ (x _y) ↦ 1 + (x + x)) (2 * 2) 1

end Sequence