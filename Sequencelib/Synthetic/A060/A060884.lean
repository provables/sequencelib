/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060884 sequence
-/

namespace Sequence

@[OEIS := A060884, offset := 0, maxIndex := 100, derive := true]
def A060884 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((1 + (x * x)) * ((x - 1) * x))

end Sequence