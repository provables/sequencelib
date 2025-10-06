/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004766 sequence
-/

namespace Sequence

@[OEIS := A004766, offset := 1, maxIndex := 56, derive := true]
def A004766 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 * (2 + (x + x)))

end Sequence