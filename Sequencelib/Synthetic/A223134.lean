/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A223134 sequence
-/

namespace Sequence

@[OEIS := A223134, offset := 0, maxIndex := 99, derive := true]
def A223134 (x : ℕ) : ℕ :=
  Int.toNat <| (x + x) + loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 1) x 1 2

end Sequence