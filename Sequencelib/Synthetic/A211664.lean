/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211664 sequence
-/

namespace Sequence

@[OEIS := A211664, offset := 1, maxIndex := 90, derive := true]
def A211664 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + ((x - 1) / (1 + (2 + (x / 2))))

end Sequence