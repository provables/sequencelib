/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010692 sequence
-/

namespace Sequence

@[OEIS := A010692, offset := 0, maxIndex := 65, derive := true]
def A010692 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (2 * 4)

end Sequence