/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014017 sequence
-/

namespace Sequence

@[OEIS := A014017, offset := 0, maxIndex := 100, derive := true]
def A014017 (x : ℕ) : ℤ :=
  (((x - 1) / 4) % 2) - ((x / 2) / 2) % 2

end Sequence