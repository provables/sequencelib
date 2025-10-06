/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007980 sequence
-/

namespace Sequence

@[OEIS := A007980, offset := 0, maxIndex := 100, derive := true]
def A007980 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((x * x) / 3) + x)

end Sequence