/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165211 sequence
-/

namespace Sequence

@[OEIS := A165211, offset := 0, maxIndex := 100, derive := true]
def A165211 (x : ℕ) : ℕ :=
  Int.toNat <| (((x / 2) / 2) + x) % 2

end Sequence