/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175976 sequence
-/

namespace Sequence

@[OEIS := A175976, offset := 0, maxIndex := 100, derive := true]
def A175976 (x : ℕ) : ℕ :=
  Int.toNat <| (1 - ((x + x) + x)) + loop (λ (x _y) ↦ x + x) (x + x) 1

end Sequence