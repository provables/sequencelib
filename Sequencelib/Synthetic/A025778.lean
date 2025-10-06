/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025778 sequence
-/

namespace Sequence

@[OEIS := A025778, offset := 0, maxIndex := 60, derive := true]
def A025778 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((x * x) - x) / (1 + 4)) + x) / 2) + x) / 2) / 4) + 1

end Sequence