/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093504 sequence
-/

namespace Sequence

@[OEIS := A093504, offset := 1, maxIndex := 4, derive := true]
def A093504 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((1 + ((3 * (x * x)) - x)) * (x * x)) - x) / 2) + 2

end Sequence