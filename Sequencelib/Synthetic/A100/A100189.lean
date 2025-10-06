/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100189 sequence
-/

namespace Sequence

@[OEIS := A100189, offset := 1, maxIndex := 100, derive := true]
def A100189 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((x * x) * x) - x) / 3) + x) * 2) + 1) * (1 + x)

end Sequence