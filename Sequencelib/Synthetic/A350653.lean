/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350653 sequence
-/

namespace Sequence

@[OEIS := A350653, offset := 2, maxIndex := 26, derive := true]
def A350653 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop (λ (x y) ↦ 2 * (((x / y) + x) + x)) x 2 - 1) / (2 + x)) - x

end Sequence