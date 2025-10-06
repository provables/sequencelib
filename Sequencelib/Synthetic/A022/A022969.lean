/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022969 sequence
-/

namespace Sequence

@[OEIS := A022969, offset := 0, maxIndex := 60, derive := true]
def A022969 (x : ℕ) : ℤ :=
  1 + ((2 * (2 + 4)) - x)

end Sequence