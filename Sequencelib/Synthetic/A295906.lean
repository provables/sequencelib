/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295906 sequence
-/

namespace Sequence

@[OEIS := A295906, offset := 1, maxIndex := 45, derive := true]
def A295906 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + (2 * ((2 + ((2 * (x + x)) + x)) * x))

end Sequence