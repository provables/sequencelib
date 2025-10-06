/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175828 sequence
-/

namespace Sequence

@[OEIS := A175828, offset := 0, maxIndex := 45, derive := true]
def A175828 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((x / 2) + x) * x) - x % 2) * 2) + 1) + x

end Sequence