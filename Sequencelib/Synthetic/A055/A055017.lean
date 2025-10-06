/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055017 sequence
-/

namespace Sequence

@[OEIS := A055017, offset := 0, maxIndex := 85, derive := true]
def A055017 (x : ℕ) : ℤ :=
  (x % (2 + (2 * 4))) - (x / 2) / (1 + 4)

end Sequence