/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058201 sequence
-/

namespace Sequence

@[OEIS := A058201, offset := 1, maxIndex := 5, derive := true]
def A058201 (n : ℕ) : ℤ :=
  let x := n - 1
  ((2 + x) * if x ≤ 0 then 1 else x) + x % 3

end Sequence