/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172044 sequence
-/

namespace Sequence

@[OEIS := A172044, offset := 0, maxIndex := 100, derive := true]
def A172044 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((1 + 4) * ((2 + x) * x)) + x)

end Sequence