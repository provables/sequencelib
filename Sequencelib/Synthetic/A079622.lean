/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079622 sequence
-/

namespace Sequence

@[OEIS := A079622, offset := 1, maxIndex := 4, derive := true]
def A079622 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x + x) (if x ≤ 0 then 1 else (1 + x) * x) 2 - 1

end Sequence