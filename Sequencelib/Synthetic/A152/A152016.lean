/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152016 sequence
-/

namespace Sequence

@[OEIS := A152016, offset := 0, maxIndex := 33, derive := true]
def A152016 (x : ℕ) : ℤ :=
  ((((x * x) - 1) - x) * (x * x)) - x

end Sequence