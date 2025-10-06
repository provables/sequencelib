/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247334 sequence
-/

namespace Sequence

@[OEIS := A247334, offset := 1, maxIndex := 8, derive := true]
def A247334 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((1 + x) / ((2 * 4) - x))) + x

end Sequence