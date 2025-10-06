/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163811 sequence
-/

namespace Sequence

@[OEIS := A163811, offset := 0, maxIndex := 100, derive := true]
def A163811 (x : ℕ) : ℤ :=
  ((1 - x) % (2 + (x % 2))) - if x ≤ 0 then x else 1

end Sequence