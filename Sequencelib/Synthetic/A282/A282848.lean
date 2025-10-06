/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282848 sequence
-/

namespace Sequence

@[OEIS := A282848, offset := 1, maxIndex := 100, derive := true]
def A282848 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 + ((((1 + x) % 4) + x) + x))

end Sequence