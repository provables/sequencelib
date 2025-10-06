/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057365 sequence
-/

namespace Sequence

@[OEIS := A057365, offset := 0, maxIndex := 100, derive := true]
def A057365 (x : ℕ) : ℕ :=
  Int.toNat <| (((((-x)) / (1 + (2 + 4))) + x) + x) / 3

end Sequence