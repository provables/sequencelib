/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277981 sequence
-/

namespace Sequence

@[OEIS := A277981, offset := 0, maxIndex := 43, derive := true]
def A277981 (x : ℕ) : ℤ :=
  (((1 + (2 + (2 + x))) * (((x - 2) + x) * 2)) + x) + x

end Sequence