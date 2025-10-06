/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010713 sequence
-/

namespace Sequence

@[OEIS := A010713, offset := 0, maxIndex := 80, derive := true]
def A010713 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (2 + (2 * (x % 2)))

end Sequence