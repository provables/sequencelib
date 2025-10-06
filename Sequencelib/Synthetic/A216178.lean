/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216178 sequence
-/

namespace Sequence

@[OEIS := A216178, offset := 0, maxIndex := 79, derive := true]
def A216178 (x : ℕ) : ℤ :=
  (2 * (2 - (x % 4))) - x % 2

end Sequence