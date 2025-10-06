/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277982 sequence
-/

namespace Sequence

@[OEIS := A277982, offset := 0, maxIndex := 40, derive := true]
def A277982 (x : ℕ) : ℤ :=
  ((((((x + (x * 2)) - 2 * 2) * 2) + 1) * 2) * (2 + x)) - 2

end Sequence