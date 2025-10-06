/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226233 sequence
-/

namespace Sequence

@[OEIS := A226233, offset := 1, maxIndex := 91, derive := true]
def A226233 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((x / 2) / (1 + 4))

end Sequence