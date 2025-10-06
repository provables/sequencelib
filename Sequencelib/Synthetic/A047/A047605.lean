/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047605 sequence
-/

namespace Sequence

@[OEIS := A047605, offset := 1, maxIndex := 63, derive := true]
def A047605 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x - ((x / 2) % 2)) + x

end Sequence