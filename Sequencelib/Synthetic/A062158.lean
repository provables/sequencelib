/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062158 sequence
-/

namespace Sequence

@[OEIS := A062158, offset := 0, maxIndex := 100, derive := true]
def A062158 (x : ℕ) : ℤ :=
  (1 + (x * x)) * (x - 1)

end Sequence