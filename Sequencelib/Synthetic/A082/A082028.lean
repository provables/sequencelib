/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082028 sequence
-/

namespace Sequence

@[OEIS := A082028, offset := 0, maxIndex := 18, derive := true]
def A082028 (x : ℕ) : ℕ :=
  Int.toNat <| (((x - 1) + x) * loop (λ (x y) ↦ 1 + (x * y)) x 1) + 2

end Sequence