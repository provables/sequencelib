/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070516 sequence
-/

namespace Sequence

@[OEIS := A070516, offset := 0, maxIndex := 100, derive := true]
def A070516 (x : ℕ) : ℤ :=
  (x * x) % (2 * (2 + 4))

end Sequence