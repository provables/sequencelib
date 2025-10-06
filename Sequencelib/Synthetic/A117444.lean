/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117444 sequence
-/

namespace Sequence

@[OEIS := A117444, offset := 0, maxIndex := 75, derive := true]
def A117444 (x : ℕ) : ℤ :=
  2 - ((2 - x) % (1 + 4))

end Sequence