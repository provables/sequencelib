/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121205 sequence
-/

namespace Sequence

@[OEIS := A121205, offset := 7, maxIndex := 45, derive := true]
def A121205 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| ((((((loop (λ (x y) ↦ 2 + (x + y)) (((x + 2) + 1) + 2) 2 * 3) + 2) + 1) * 2) + 1) + 2) * 2

end Sequence