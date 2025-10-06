/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004524 sequence
-/

namespace Sequence

@[OEIS := A004524, offset := 0, maxIndex := 75, derive := true]
def A004524 (x : ℕ) : ℕ :=
  Int.toNat <| (x - ((x / 2) % 2)) / 2

end Sequence