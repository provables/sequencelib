/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121670 sequence
-/

namespace Sequence

@[OEIS := A121670, offset := 0, maxIndex := 100, derive := true]
def A121670 (x : ℕ) : ℤ :=
  (((x * x) - 2) * x) - x

end Sequence