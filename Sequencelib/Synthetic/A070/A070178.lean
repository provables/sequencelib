/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070178 sequence
-/

namespace Sequence

@[OEIS := A070178, offset := 0, maxIndex := 10, derive := true]
def A070178 (x : ℕ) : ℤ :=
  ((((x * x) - 1) / (2 + (2 * 4))) - x) + 2

end Sequence