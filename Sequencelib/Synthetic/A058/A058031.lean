/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058031 sequence
-/

namespace Sequence

@[OEIS := A058031, offset := 0, maxIndex := 100, derive := true]
def A058031 (x : ℕ) : ℕ :=
  Int.toNat <| 1 - loop (λ (x y) ↦ (y - x) * x) 2 x

end Sequence