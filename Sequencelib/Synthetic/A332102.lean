/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332102 sequence
-/

namespace Sequence

@[OEIS := A332102, offset := 0, maxIndex := 66, derive := true]
def A332102 (x : ℕ) : ℕ :=
  Int.toNat <| (((((2 - ((x / (1 + 4)) / 3)) + x) / 2) + x) + 2) + x

end Sequence