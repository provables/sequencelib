/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084537 sequence
-/

namespace Sequence

@[OEIS := A084537, offset := 0, maxIndex := 21, derive := true]
def A084537 (x : ℕ) : ℤ :=
  1 + ((x * x) - x)

end Sequence