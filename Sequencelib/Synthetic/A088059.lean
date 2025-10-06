/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088059 sequence
-/

namespace Sequence

@[OEIS := A088059, offset := 1, maxIndex := 19, derive := true]
def A088059 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + (((2 + x) * x) + x)

end Sequence