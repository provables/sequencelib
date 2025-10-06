/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319624 sequence
-/

namespace Sequence

@[OEIS := A319624, offset := 0, maxIndex := 5, derive := true]
def A319624 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ ((x * x) / 2) + y) x 0 + 1) / 2) - x) + 1

end Sequence