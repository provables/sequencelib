/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021095 sequence
-/

namespace Sequence

@[OEIS := A021095, offset := 0, maxIndex := 98, derive := true]
def A021095 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ y - x) x 1 1 % loop (λ (x _y) ↦ 1 + (x + x)) 2 2) - 1

end Sequence