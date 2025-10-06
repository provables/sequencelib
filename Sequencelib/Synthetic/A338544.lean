/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338544 sequence
-/

namespace Sequence

@[OEIS := A338544, offset := 0, maxIndex := 55, derive := true]
def A338544 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x - (x / 2)) + x) + x) * (((x - 1)) / 2)) / 2

end Sequence