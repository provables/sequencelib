/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102560 sequence
-/

namespace Sequence

@[OEIS := A102560, offset := 0, maxIndex := 100, derive := true]
def A102560 (x : ℕ) : ℤ :=
  (2 - (x % 4)) / 2

end Sequence