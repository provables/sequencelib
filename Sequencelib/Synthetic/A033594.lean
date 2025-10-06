/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033594 sequence
-/

namespace Sequence

@[OEIS := A033594, offset := 0, maxIndex := 31, derive := true]
def A033594 (x : ℕ) : ℤ :=
  ((((x - 1) + x) + x) * ((x - 1) + x)) * (x - 1)

end Sequence