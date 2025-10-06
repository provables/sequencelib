/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145287 sequence
-/

namespace Sequence

@[OEIS := A145287, offset := 0, maxIndex := 40, derive := true]
def A145287 (x : ℕ) : ℤ :=
  1 + ((2 * (x + x)) + x)

end Sequence