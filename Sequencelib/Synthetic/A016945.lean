/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016945 sequence
-/

namespace Sequence

@[OEIS := A016945, offset := 0, maxIndex := 54, derive := true]
def A016945 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * (1 + (x + x))

end Sequence