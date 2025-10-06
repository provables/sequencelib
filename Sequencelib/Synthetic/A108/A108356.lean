/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108356 sequence
-/

namespace Sequence

@[OEIS := A108356, offset := 0, maxIndex := 76, derive := true]
def A108356 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * (2 + (x / 2))) / 4

end Sequence