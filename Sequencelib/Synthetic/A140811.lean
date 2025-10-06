/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140811 sequence
-/

namespace Sequence

@[OEIS := A140811, offset := 0, maxIndex := 44, derive := true]
def A140811 (x : ℕ) : ℤ :=
  (2 * (3 * (x * x))) - 1

end Sequence