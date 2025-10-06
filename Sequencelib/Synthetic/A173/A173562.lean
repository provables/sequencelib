/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173562 sequence
-/

namespace Sequence

@[OEIS := A173562, offset := 0, maxIndex := 50, derive := true]
def A173562 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) + (x / 2) / 2

end Sequence