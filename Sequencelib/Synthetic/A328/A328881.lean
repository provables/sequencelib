/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A328881 sequence
-/

namespace Sequence

@[OEIS := A328881, offset := 0, maxIndex := 100, derive := true]
def A328881 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ y - x) (λ (_x y) ↦ y + y) x 2 1) / 3

end Sequence