/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175659 sequence
-/

namespace Sequence

@[OEIS := A175659, offset := 0, maxIndex := 100, derive := true]
def A175659 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ x + y) x 0 1 - loop (λ (x _y) ↦ x + x) x 1) + loop (λ (x _y) ↦ (x + x) + x) x 1) +
  loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence