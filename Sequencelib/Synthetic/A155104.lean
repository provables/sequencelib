/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155104 sequence
-/

namespace Sequence

@[OEIS := A155104, offset := 1, maxIndex := 14, derive := true]
def A155104 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * loop (λ (x _y) ↦ x + x) y x) + x) x 1

end Sequence