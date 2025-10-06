/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027578 sequence
-/

namespace Sequence

@[OEIS := A027578, offset := 0, maxIndex := 45, derive := true]
def A027578 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + ((2 + x) * (2 + x))) * (1 + 4)

end Sequence