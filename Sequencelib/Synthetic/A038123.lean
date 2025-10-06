/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038123 sequence
-/

namespace Sequence

@[OEIS := A038123, offset := 1, maxIndex := 57, derive := true]
def A038123 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * (2 + (x + x))) - x / 3) + x

end Sequence