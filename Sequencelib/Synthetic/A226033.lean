/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226033 sequence
-/

namespace Sequence

@[OEIS := A226033, offset := 1, maxIndex := 72, derive := true]
def A226033 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((1 - ((x / 3) / 2)) + 2) / 3) + x) / 2) + x) / 2) + 1) / 2

end Sequence