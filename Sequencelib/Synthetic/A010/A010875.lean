/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010875 sequence
-/

namespace Sequence

@[OEIS := A010875, offset := 0, maxIndex := 100, derive := true]
def A010875 (x : ℕ) : ℕ :=
  Int.toNat <| x % (2 + 4)

end Sequence