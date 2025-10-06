/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106510 sequence
-/

namespace Sequence

@[OEIS := A106510, offset := 0, maxIndex := 100, derive := true]
def A106510 (x : ℕ) : ℤ :=
  ((1 + if x ≤ 0 then 1 else x) % 3) - 1

end Sequence