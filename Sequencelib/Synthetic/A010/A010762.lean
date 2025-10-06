/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010762 sequence
-/

namespace Sequence

@[OEIS := A010762, offset := 1, maxIndex := 100, derive := true]
def A010762 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x - (x / 2)) * ((1 + x) / 3)

end Sequence