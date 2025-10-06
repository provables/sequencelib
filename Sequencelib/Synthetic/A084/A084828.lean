/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084828 sequence
-/

namespace Sequence

@[OEIS := A084828, offset := 1, maxIndex := 5, derive := true]
def A084828 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((if x ≤ 0 then 1 else (3 * ((x / 2) + x)) + x) * (x - 1)) + 2

end Sequence