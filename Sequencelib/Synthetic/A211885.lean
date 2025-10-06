/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211885 sequence
-/

namespace Sequence

@[OEIS := A211885, offset := 1, maxIndex := 9, derive := true]
def A211885 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x y) ↦ (loop (λ (x y) ↦ x + y) y 0 * y) + x) y 1) x x

end Sequence