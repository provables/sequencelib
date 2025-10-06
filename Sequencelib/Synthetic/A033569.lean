/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033569 sequence
-/

namespace Sequence

@[OEIS := A033569, offset := 0, maxIndex := 100, derive := true]
def A033569 (x : ℕ) : ℤ :=
  ((2 * (3 * (x * x))) - 1) - x

end Sequence