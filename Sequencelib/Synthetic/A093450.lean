/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093450 sequence
-/

namespace Sequence

@[OEIS := A093450, offset := 1, maxIndex := 17, derive := true]
def A093450 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (y / 2) + x) x 1 / 3) * x) % 3) % 2) + 2

end Sequence