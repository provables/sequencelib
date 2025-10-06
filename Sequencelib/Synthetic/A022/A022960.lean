/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022960 sequence
-/

namespace Sequence

@[OEIS := A022960, offset := 0, maxIndex := 58, derive := true]
def A022960 (x : ℕ) : ℤ :=
  2 + (2 - x)

end Sequence