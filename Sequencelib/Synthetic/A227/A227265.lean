/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A227265 sequence
-/

namespace Sequence

@[OEIS := A227265, offset := 1, maxIndex := 100, derive := true]
def A227265 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (1 + x) 0 * x) / 2) / 2) + 1) + x) + 2) + x) + x) + x

end Sequence