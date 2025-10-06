/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057428 sequence
-/

namespace Sequence

@[OEIS := A057428, offset := 0, maxIndex := 83, derive := true]
def A057428 (x : ℕ) : ℤ :=
  (-if x ≤ 0 then 0 else 1)

end Sequence