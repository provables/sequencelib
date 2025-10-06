/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063219 sequence
-/

namespace Sequence

@[OEIS := A063219, offset := 1, maxIndex := 50, derive := true]
def A063219 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((1 + (2 * (((x / 3) + x) + x))) + if x ≤ 0 then 1 else 2) + x) + x) + x) + (2 + x)

end Sequence