/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087463 sequence
-/

namespace Sequence

@[OEIS := A087463, offset := 0, maxIndex := 100, derive := true]
def A087463 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ 2 * ((x * y) * y)) (λ (_x y) ↦ y) (1 + x) 1 x / 3) % loop (λ (x _y) ↦ x + x) x 1) + 1) / 2

end Sequence