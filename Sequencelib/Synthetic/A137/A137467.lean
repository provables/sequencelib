/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137467 sequence
-/

namespace Sequence

@[OEIS := A137467, offset := 3, maxIndex := 9, derive := true]
def A137467 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 1 + (x / if (x - 2) ≤ 0 then 1 else 2)

end Sequence