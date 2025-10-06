/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010462 sequence
-/

namespace Sequence

@[OEIS := A010462, offset := 1, maxIndex := 12, derive := true]
def A010462 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x / 3) * 3) / 2) + (x - (x % 2))) + x

end Sequence