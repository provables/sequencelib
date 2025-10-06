/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004068 sequence
-/

namespace Sequence

@[OEIS := A004068, offset := 0, maxIndex := 39, derive := true]
def A004068 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + ((1 + 4) * (x * x))) * x) / 3) / 2

end Sequence