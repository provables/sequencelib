/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229831 sequence
-/

namespace Sequence

@[OEIS := A229831, offset := 1, maxIndex := 4, derive := true]
def A229831 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 - (x / 2)) * 2) + 2) * (1 + x)) + 1

end Sequence