/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174114 sequence
-/

namespace Sequence

@[OEIS := A174114, offset := 1, maxIndex := 51, derive := true]
def A174114 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (((1 + (x + x)) * (x / 2)) + x)

end Sequence