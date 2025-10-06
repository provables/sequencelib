/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255845 sequence
-/

namespace Sequence

@[OEIS := A255845, offset := 0, maxIndex := 47, derive := true]
def A255845 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (2 * (2 + (2 + (x * x))))

end Sequence