/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074150 sequence
-/

namespace Sequence

@[OEIS := A074150, offset := 0, maxIndex := 21, derive := true]
def A074150 (x : ℕ) : ℤ :=
  1 + ((1 + (x * x)) / 2)

end Sequence