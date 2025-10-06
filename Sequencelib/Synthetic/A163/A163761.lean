/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163761 sequence
-/

namespace Sequence

@[OEIS := A163761, offset := 0, maxIndex := 100, derive := true]
def A163761 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((1 + 4) * ((x * x) + x))

end Sequence