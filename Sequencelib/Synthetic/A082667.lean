/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082667 sequence
-/

namespace Sequence

@[OEIS := A082667, offset := 1, maxIndex := 100, derive := true]
def A082667 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x + x) / 3) * ((x - 1) / 3)) + x

end Sequence