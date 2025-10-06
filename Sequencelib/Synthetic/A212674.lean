/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212674 sequence
-/

namespace Sequence

@[OEIS := A212674, offset := 0, maxIndex := 34, derive := true]
def A212674 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + (3 * (x * x))) * (1 + (x * x))) / (1 + 3)) / 2

end Sequence