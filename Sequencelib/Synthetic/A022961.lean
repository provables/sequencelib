/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022961 sequence
-/

namespace Sequence

@[OEIS := A022961, offset := 0, maxIndex := 58, derive := true]
def A022961 (x : ℕ) : ℤ :=
  1 + (2 + (2 - x))

end Sequence