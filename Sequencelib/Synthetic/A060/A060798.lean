/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060798 sequence
-/

namespace Sequence

@[OEIS := A060798, offset := 1, maxIndex := 100, derive := true]
def A060798 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * if (2 - x) ≤ 0 then x else 2

end Sequence