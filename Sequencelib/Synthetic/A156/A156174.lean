/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156174 sequence
-/

namespace Sequence

@[OEIS := A156174, offset := 0, maxIndex := 100, derive := true]
def A156174 (x : ℕ) : ℤ :=
  ((2 + ((x - 2) % (1 + 4))) % 3) - 1

end Sequence