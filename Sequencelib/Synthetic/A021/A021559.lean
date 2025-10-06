/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021559 sequence
-/

namespace Sequence

@[OEIS := A021559, offset := 0, maxIndex := 49, derive := true]
def A021559 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (_x y) ↦ y * y) (λ (_x _y) ↦ 0) x 1 2 * if x ≤ 0 then 1 else 2) x (x * 2)

end Sequence