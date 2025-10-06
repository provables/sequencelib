/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A061547 sequence
-/

namespace Sequence

@[OEIS := A061547, offset := 0, maxIndex := 100, derive := true]
def A061547 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (y + y)) (λ (x _y) ↦ x + x) (x - 1) 1 1 / if x ≤ 0 then 1 else 2

end Sequence