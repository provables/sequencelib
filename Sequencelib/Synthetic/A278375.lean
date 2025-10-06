/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278375 sequence
-/

namespace Sequence

@[OEIS := A278375, offset := 1, maxIndex := 14, derive := true]
def A278375 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((2 * (x + 2)) + x) * 2) + x) * 2) - 2) / (x + (2 * 4))

end Sequence