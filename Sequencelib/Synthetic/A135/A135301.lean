/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135301 sequence
-/

namespace Sequence

@[OEIS := A135301, offset := 1, maxIndex := 100, derive := true]
def A135301 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (if (y % 2) ≤ 0 then 0 else (2 + y) * y) + x) x 1 + x

end Sequence