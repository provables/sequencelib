/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290699 sequence
-/

namespace Sequence

@[OEIS := A290699, offset := 0, maxIndex := 34, derive := true]
def A290699 (x : ℕ) : ℕ :=
  Int.toNat <| ((-x)) % ((x * x) + loop (λ (x _y) ↦ x + x) x 1)

end Sequence