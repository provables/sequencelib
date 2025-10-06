/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145289 sequence
-/

namespace Sequence

@[OEIS := A145289, offset := 0, maxIndex := 34, derive := true]
def A145289 (x : ℕ) : ℤ :=
  1 + ((x + x) + x)

end Sequence