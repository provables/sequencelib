/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A222170 sequence
-/

namespace Sequence

@[OEIS := A222170, offset := 0, maxIndex := 100, derive := true]
def A222170 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * ((x * x) / 3)) + x * x

end Sequence