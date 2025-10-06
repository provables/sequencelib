/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144599 sequence
-/

namespace Sequence

@[OEIS := A144599, offset := 0, maxIndex := 100, derive := true]
def A144599 (x : ℕ) : ℕ :=
  Int.toNat <| (((-x)) % (1 + (2 * (2 + 4)))) % 2

end Sequence