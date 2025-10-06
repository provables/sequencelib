/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229803 sequence
-/

namespace Sequence

@[OEIS := A229803, offset := 1, maxIndex := 24, derive := true]
def A229803 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (((x + x) - (x / 3) / 2) / 4)

end Sequence