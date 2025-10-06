/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136316 sequence
-/

namespace Sequence

@[OEIS := A136316, offset := 0, maxIndex := 54, derive := true]
def A136316 (x : ℕ) : ℤ :=
  (1 + ((2 * (2 + 4)) - x)) * (1 + x)

end Sequence