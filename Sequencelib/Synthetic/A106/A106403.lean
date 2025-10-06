/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106403 sequence
-/

namespace Sequence

@[OEIS := A106403, offset := 1, maxIndex := 8, derive := true]
def A106403 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((x - 1) / (2 + 4)) + 2) * 3) + x) / 2) + x) * 2) + 1) * 2) - 2) - 1

end Sequence