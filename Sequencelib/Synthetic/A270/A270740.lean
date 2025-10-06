/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270740 sequence
-/

namespace Sequence

@[OEIS := A270740, offset := 0, maxIndex := 62, derive := true]
def A270740 (x : ℕ) : ℕ :=
  Int.toNat <| (x - (x / 3)) % 3

end Sequence