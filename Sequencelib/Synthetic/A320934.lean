/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A320934 sequence
-/

namespace Sequence

@[OEIS := A320934, offset := 1, maxIndex := 29, derive := true]
def A320934 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ x + x) x 1 / 3) * loop (λ (x _y) ↦ x * 2) (x - 2) 1

end Sequence