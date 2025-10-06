/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156701 sequence
-/

namespace Sequence

@[OEIS := A156701, offset := 0, maxIndex := 31, derive := true]
def A156701 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((x * x) * x) + 4 * x) * x) * 2) + 2) * 2) + x * x

end Sequence