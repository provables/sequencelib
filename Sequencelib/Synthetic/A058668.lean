/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058668 sequence
-/

namespace Sequence

@[OEIS := A058668, offset := 1, maxIndex := 7, derive := true]
def A058668 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x _y) ↦ ((x - 1) + x) + x) x 1 / 2) + 1) / 2) / 2) + 2) / 2) / 2) * 2) + x

end Sequence