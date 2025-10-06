/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026353 sequence
-/

namespace Sequence

@[OEIS := A026353, offset := 2, maxIndex := 46, derive := true]
def A026353 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 * 2) - x) + 1) * (x + 1)) + 1) - x) / 2) - 2

end Sequence