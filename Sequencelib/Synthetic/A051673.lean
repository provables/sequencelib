/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051673 sequence
-/

namespace Sequence

@[OEIS := A051673, offset := 0, maxIndex := 38, derive := true]
def A051673 (x : ℕ) : ℕ :=
  Int.toNat <| (((((1 + (2 + 4)) * ((x - 1) * x)) + x) + 2) * x) / 3

end Sequence