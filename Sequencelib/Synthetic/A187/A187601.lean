/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187601 sequence
-/

namespace Sequence

@[OEIS := A187601, offset := 0, maxIndex := 68, derive := true]
def A187601 (x : ℕ) : ℕ :=
  Int.toNat <| (((((2 - (x % 2)) * (x * x)) % ((4 + 1) + 1)) * x) + x) / 2

end Sequence