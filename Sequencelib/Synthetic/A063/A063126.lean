/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063126 sequence
-/

namespace Sequence

@[OEIS := A063126, offset := 1, maxIndex := 50, derive := true]
def A063126 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 * (2 + (2 * (x + x)))) - x / 2) * 2) - if x ≤ 0 then 1 else 2) - 1

end Sequence