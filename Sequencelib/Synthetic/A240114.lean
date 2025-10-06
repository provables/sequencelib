/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A240114 sequence
-/

namespace Sequence

@[OEIS := A240114, offset := 1, maxIndex := 15, derive := true]
def A240114 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x y) ↦ (y / 2) + x) x 1 / 3) * 3) + 1) / 2) + 2) + x) / 2) + x

end Sequence