/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258837 sequence
-/

namespace Sequence

@[OEIS := A258837, offset := 0, maxIndex := 100, derive := true]
def A258837 (x : ℕ) : ℤ :=
  1 - (x * x)

end Sequence