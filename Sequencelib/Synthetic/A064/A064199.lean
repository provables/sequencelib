/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064199 sequence
-/

namespace Sequence

@[OEIS := A064199, offset := 2, maxIndex := 100, derive := true]
def A064199 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((2 + x) * (x * x)) - x) * 3) * 3) / 2) * x

end Sequence