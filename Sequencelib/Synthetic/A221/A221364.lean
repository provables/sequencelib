/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A221364 sequence
-/

namespace Sequence

@[OEIS := A221364, offset := 0, maxIndex := 49, derive := true]
def A221364 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (if (x % 2) ≤ 0 then 1 else x) 1 2 - 2

end Sequence