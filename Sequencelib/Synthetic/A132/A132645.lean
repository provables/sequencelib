/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132645 sequence
-/

namespace Sequence

@[OEIS := A132645, offset := 0, maxIndex := 2, derive := true]
def A132645 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) 1 (1 + loop (λ (x _y) ↦ x * x) x 2)

end Sequence