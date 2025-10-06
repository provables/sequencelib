/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335408 sequence
-/

namespace Sequence

@[OEIS := A335408, offset := 3, maxIndex := 12, derive := true]
def A335408 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((((x * x) / (1 + 4)) + x) / 2) + x

end Sequence