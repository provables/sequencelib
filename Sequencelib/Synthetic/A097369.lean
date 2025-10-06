/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097369 sequence
-/

namespace Sequence

@[OEIS := A097369, offset := 2, maxIndex := 75, derive := true]
def A097369 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((((((3 * (1 + ((x / 2) / 2))) + x) / 2) + x) / 2) + 1) / 2) / 2) + 1) + x) / 2) + 1

end Sequence