/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A202804 sequence
-/

namespace Sequence

@[OEIS := A202804, offset := 0, maxIndex := 100, derive := true]
def A202804 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((2 + ((x + x) + x)) * x)

end Sequence