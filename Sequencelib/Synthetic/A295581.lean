/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295581 sequence
-/

namespace Sequence

@[OEIS := A295581, offset := 3, maxIndex := 15, derive := true]
def A295581 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((((((((((((2 * (((x / 2) / 2) / 2)) + x) * x) + 2) / 2) / 2) + 1) + x) / 2) + 1) / 2) + x) + 1) + 2

end Sequence