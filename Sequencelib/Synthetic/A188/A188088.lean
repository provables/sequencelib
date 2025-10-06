/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188088 sequence
-/

namespace Sequence

@[OEIS := A188088, offset := 1, maxIndex := 69, derive := true]
def A188088 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((1 + (((x / 2) / (1 + 4)) + x)) / 3) + 1) + x) * 3) + 1) + x

end Sequence