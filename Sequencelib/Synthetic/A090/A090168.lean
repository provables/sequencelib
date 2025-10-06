/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090168 sequence
-/

namespace Sequence

@[OEIS := A090168, offset := 0, maxIndex := 72, derive := true]
def A090168 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + x) / 3) + x / 2

end Sequence