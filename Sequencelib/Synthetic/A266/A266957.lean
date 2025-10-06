/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266957 sequence
-/

namespace Sequence

@[OEIS := A266957, offset := 1, maxIndex := 50, derive := true]
def A266957 (n : ℕ) : ℤ :=
  let x := n - 1
  (((2 + ((2 * (x + x)) - x / 2)) + x) * ((1 + x) / 2)) - 1

end Sequence