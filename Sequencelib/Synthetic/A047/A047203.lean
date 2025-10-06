/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047203 sequence
-/

namespace Sequence

@[OEIS := A047203, offset := 1, maxIndex := 72, derive := true]
def A047203 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| x - (((-x)) / 4)

end Sequence