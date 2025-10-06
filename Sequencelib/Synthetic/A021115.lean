/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021115 sequence
-/

namespace Sequence

@[OEIS := A021115, offset := 0, maxIndex := 98, derive := true]
def A021115 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 * 4)) * ((x % 3) / 2)

end Sequence