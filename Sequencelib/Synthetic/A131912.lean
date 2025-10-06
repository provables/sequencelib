/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131912 sequence
-/

namespace Sequence

@[OEIS := A131912, offset := 1, maxIndex := 55, derive := true]
def A131912 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((2 * ((x + x) + x)) - x / 2)

end Sequence