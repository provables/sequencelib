/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112713 sequence
-/

namespace Sequence

@[OEIS := A112713, offset := 0, maxIndex := 89, derive := true]
def A112713 (x : ℕ) : ℕ :=
  Int.toNat <| (((-x)) / (1 + 4)) % 2

end Sequence