/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175848 sequence
-/

namespace Sequence

@[OEIS := A175848, offset := 0, maxIndex := 50, derive := true]
def A175848 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ (((y * y) - 1) / 2) + x) x 1 + x) / 2) / 2) + 1) + x) / 2

end Sequence