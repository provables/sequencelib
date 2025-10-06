/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140085 sequence
-/

namespace Sequence

@[OEIS := A140085, offset := 0, maxIndex := 98, derive := true]
def A140085 (x : ℕ) : ℕ :=
  Int.toNat <| ((x - (((x / 2) / 2) % 2)) - x / 2) % 4

end Sequence