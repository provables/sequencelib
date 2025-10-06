/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050187 sequence
-/

namespace Sequence

@[OEIS := A050187, offset := 0, maxIndex := 49, derive := true]
def A050187 (x : ℕ) : ℕ :=
  Int.toNat <| ((x - 1) / 2) * x

end Sequence