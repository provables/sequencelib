/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092200 sequence
-/

namespace Sequence

@[OEIS := A092200, offset := 0, maxIndex := 71, derive := true]
def A092200 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((x % 3) % 2) + x)

end Sequence