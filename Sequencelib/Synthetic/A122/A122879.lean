/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122879 sequence
-/

namespace Sequence

@[OEIS := A122879, offset := 1, maxIndex := 100, derive := true]
def A122879 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x + x) / (1 + (2 + 4))) % 3

end Sequence