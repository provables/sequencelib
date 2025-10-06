/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190816 sequence
-/

namespace Sequence

@[OEIS := A190816, offset := 0, maxIndex := 43, derive := true]
def A190816 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((2 * ((x - 2) + x)) + x) * x)

end Sequence