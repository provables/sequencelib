/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083364 sequence
-/

namespace Sequence

@[OEIS := A083364, offset := 0, maxIndex := 100, derive := true]
def A083364 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((x * (x / 2)) + x) * 2) + 2) * 2) + 1) + x) * (x + 1)) + 1) / 2) / 2

end Sequence