/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003215 sequence
-/

namespace Sequence

@[OEIS := A003215, offset := 0, maxIndex := 100, derive := true]
def A003215 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (3 * ((x * x) + x))

end Sequence