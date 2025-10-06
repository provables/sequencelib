/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070690 sequence
-/

namespace Sequence

@[OEIS := A070690, offset := 0, maxIndex := 100, derive := true]
def A070690 (x : ℕ) : ℤ :=
  ((x * x) * x) % (1 + 4)

end Sequence