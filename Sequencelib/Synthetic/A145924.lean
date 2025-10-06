/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145924 sequence
-/

namespace Sequence

@[OEIS := A145924, offset := 0, maxIndex := 84, derive := true]
def A145924 (x : ℕ) : ℕ :=
  Int.toNat <| ((((2 * (x * x)) - 1) % (1 + 4)) * 2) + 1

end Sequence