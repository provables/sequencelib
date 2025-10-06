/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105384 sequence
-/

namespace Sequence

@[OEIS := A105384, offset := 0, maxIndex := 100, derive := true]
def A105384 (x : ℕ) : ℤ :=
  (((x - 2) % (1 + 4)) - 1) / 3

end Sequence