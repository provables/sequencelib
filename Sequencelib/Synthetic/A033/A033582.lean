/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033582 sequence
-/

namespace Sequence

@[OEIS := A033582, offset := 0, maxIndex := 45, derive := true]
def A033582 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 + 4)) * (x * x)

end Sequence