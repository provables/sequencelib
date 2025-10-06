/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155098 sequence
-/

namespace Sequence

@[OEIS := A155098, offset := 1, maxIndex := 100, derive := true]
def A155098 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((1 + ((2 * (x + x)) - x / 2)) * 3) + 2) * 2) - x) * 2) - 2) + x) / 2

end Sequence