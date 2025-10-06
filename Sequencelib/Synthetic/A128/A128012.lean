/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128012 sequence
-/

namespace Sequence

@[OEIS := A128012, offset := 0, maxIndex := 56, derive := true]
def A128012 (x : ℕ) : ℕ :=
  Int.toNat <| (((((x * x) / (2 + 4)) + x) / 2) + 1) * 3

end Sequence