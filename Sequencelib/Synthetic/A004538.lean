/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004538 sequence
-/

namespace Sequence

@[OEIS := A004538, offset := 0, maxIndex := 100, derive := true]
def A004538 (x : ℕ) : ℤ :=
  (3 * ((x * x) + x)) - 1

end Sequence