/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069779 sequence
-/

namespace Sequence

@[OEIS := A069779, offset := 0, maxIndex := 29, derive := true]
def A069779 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + ((x * x) + x)) * (1 + x)) * ((1 + (x * x)) * (1 + x))

end Sequence