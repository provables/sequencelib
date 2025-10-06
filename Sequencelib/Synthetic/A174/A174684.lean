/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174684 sequence
-/

namespace Sequence

@[OEIS := A174684, offset := 0, maxIndex := 3, derive := true]
def A174684 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (((x * x) * x) + ((1 - (x % 2)) + x))

end Sequence