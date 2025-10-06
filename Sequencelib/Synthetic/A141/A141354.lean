/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141354 sequence
-/

namespace Sequence

@[OEIS := A141354, offset := 0, maxIndex := 42, derive := true]
def A141354 (x : ℕ) : ℤ :=
  1 - (((2 + x) * x) + x % 2)

end Sequence