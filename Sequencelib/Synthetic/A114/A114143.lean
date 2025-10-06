/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114143 sequence
-/

namespace Sequence

@[OEIS := A114143, offset := 1, maxIndex := 37, derive := true]
def A114143 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + (2 + x)

end Sequence