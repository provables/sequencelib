/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132151 sequence
-/

namespace Sequence

@[OEIS := A132151, offset := 0, maxIndex := 87, derive := true]
def A132151 (x : ℕ) : ℤ :=
  ((2 - ((x / 2) % 4)) + x % 2) / 3

end Sequence