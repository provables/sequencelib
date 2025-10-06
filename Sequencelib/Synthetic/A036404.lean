/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036404 sequence
-/

namespace Sequence

@[OEIS := A036404, offset := 0, maxIndex := 54, derive := true]
def A036404 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((x * x) - 1) / (1 + 4))

end Sequence