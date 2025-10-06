/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165662 sequence
-/

namespace Sequence

@[OEIS := A165662, offset := 0, maxIndex := 89, derive := true]
def A165662 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x * x) - x) % (1 + 4)) + 2) * 2

end Sequence