/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090223 sequence
-/

namespace Sequence

@[OEIS := A090223, offset := 0, maxIndex := 100, derive := true]
def A090223 (x : ℕ) : ℕ :=
  Int.toNat <| (((-x)) / (1 + 4)) + x

end Sequence