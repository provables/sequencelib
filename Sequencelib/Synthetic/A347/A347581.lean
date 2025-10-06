/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347581 sequence
-/

namespace Sequence

@[OEIS := A347581, offset := 1, maxIndex := 10, derive := true]
def A347581 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((x * x) - x) / (1 + 4)) + 2) + x) + x) + x) + 2) + x) + x

end Sequence