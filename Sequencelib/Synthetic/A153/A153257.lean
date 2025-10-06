/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153257 sequence
-/

namespace Sequence

@[OEIS := A153257, offset := 0, maxIndex := 39, derive := true]
def A153257 (x : ℕ) : ℤ :=
  ((1 + x) * ((x - 2) * x)) - 1

end Sequence