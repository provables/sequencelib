/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A201106 sequence
-/

namespace Sequence

@[OEIS := A201106, offset := 1, maxIndex := 36, derive := true]
def A201106 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x 0 * (((2 + x) * x) - 1)) / 2

end Sequence