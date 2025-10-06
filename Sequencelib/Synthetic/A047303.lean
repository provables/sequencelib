/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047303 sequence
-/

namespace Sequence

@[OEIS := A047303, offset := 1, maxIndex := 66, derive := true]
def A047303 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + x) / (2 + 4)) + x

end Sequence