/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015238 sequence
-/

namespace Sequence

@[OEIS := A015238, offset := 0, maxIndex := 100, derive := true]
def A015238 (x : ℕ) : ℤ :=
  (1 + (2 * (x - 2))) * (x * x)

end Sequence