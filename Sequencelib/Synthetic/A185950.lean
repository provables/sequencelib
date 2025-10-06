/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185950 sequence
-/

namespace Sequence

@[OEIS := A185950, offset := 0, maxIndex := 100, derive := true]
def A185950 (x : ℕ) : ℤ :=
  ((2 * (2 * (x * x))) - 1) - x

end Sequence