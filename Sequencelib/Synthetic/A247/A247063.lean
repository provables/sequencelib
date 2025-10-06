/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247063 sequence
-/

namespace Sequence

@[OEIS := A247063, offset := 1, maxIndex := 78, derive := true]
def A247063 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((2 + (x + x)) / ((4 * 3) + 1)) * 3) + 2) / 2) + 2) + x) - 2

end Sequence