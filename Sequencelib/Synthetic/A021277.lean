/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021277 sequence
-/

namespace Sequence

@[OEIS := A021277, offset := 0, maxIndex := 98, derive := true]
def A021277 (x : ℕ) : ℕ :=
  Int.toNat <| 1 - loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ 2 + x) x 1 0

end Sequence