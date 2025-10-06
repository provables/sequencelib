/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A288962 sequence
-/

namespace Sequence

@[OEIS := A288962, offset := 1, maxIndex := 40, derive := true]
def A288962 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((2 - x) + (x * x) * x) * x) / 2) * x) + x) / 2

end Sequence