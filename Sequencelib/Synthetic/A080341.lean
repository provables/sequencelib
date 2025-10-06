/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080341 sequence
-/

namespace Sequence

@[OEIS := A080341, offset := 1, maxIndex := 49, derive := true]
def A080341 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((2 + x) * x)) + (2 + x) / 3

end Sequence