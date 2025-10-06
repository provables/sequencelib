/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211670 sequence
-/

namespace Sequence

@[OEIS := A211670, offset := 1, maxIndex := 90, derive := true]
def A211670 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x _y) ↦ (x - 1) / if x ≤ 0 then 1 else 2) x x + x) / 2) + 1) / 2) + 1) % (1 + x)

end Sequence