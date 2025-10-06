/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010733 sequence
-/

namespace Sequence

@[OEIS := A010733, offset := 0, maxIndex := 65, derive := true]
def A010733 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (2 + (2 + (x % 2)))

end Sequence