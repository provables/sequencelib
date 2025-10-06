/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187339 sequence
-/

namespace Sequence

@[OEIS := A187339, offset := 1, maxIndex := 63, derive := true]
def A187339 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (y - ((x / 2) / 2)) / 3) x 0 + x) + x) + 2

end Sequence