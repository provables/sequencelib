/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A316569 sequence
-/

namespace Sequence

@[OEIS := A316569, offset := 0, maxIndex := 75, derive := true]
def A316569 (x : ℕ) : ℤ :=
  (((((((if (x % 3) ≤ 0 then 1 else x * x) + 1) / ((2 * 2) + 1)) + 1) * x) - 2) % 3) - 1

end Sequence