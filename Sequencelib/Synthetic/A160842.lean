/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160842 sequence
-/

namespace Sequence

@[OEIS := A160842, offset := 0, maxIndex := 100, derive := true]
def A160842 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) + 2 % (1 + x)

end Sequence