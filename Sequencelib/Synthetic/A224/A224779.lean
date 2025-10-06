/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A224779 sequence
-/

namespace Sequence

@[OEIS := A224779, offset := 1, maxIndex := 72, derive := true]
def A224779 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((2 * (x + x)) / (1 + x)) + x / 3)) + (x + 1)

end Sequence