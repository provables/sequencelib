/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024499 sequence
-/

namespace Sequence

@[OEIS := A024499, offset := 2, maxIndex := 26, derive := true]
def A024499 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x y) ↦ x * y) x 1) 1 (2 + x) - 1) + 1) /
  (x + 1)

end Sequence