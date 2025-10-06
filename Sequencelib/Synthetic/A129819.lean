/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129819 sequence
-/

namespace Sequence

@[OEIS := A129819, offset := 0, maxIndex := 100, derive := true]
def A129819 (x : ℕ) : ℕ :=
  Int.toNat <| (((((x - (x / 2)) + x) * (x / 2)) / 2) + 1) / 2

end Sequence