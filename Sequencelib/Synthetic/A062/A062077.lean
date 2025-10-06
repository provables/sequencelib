/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062077 sequence
-/

namespace Sequence

@[OEIS := A062077, offset := 1, maxIndex := 49, derive := true]
def A062077 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) (3 * (1 + x)) 1 x * loop (λ (x _y) ↦ x + x) x 2

end Sequence