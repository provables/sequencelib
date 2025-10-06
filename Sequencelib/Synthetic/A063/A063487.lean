/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063487 sequence
-/

namespace Sequence

@[OEIS := A063487, offset := 0, maxIndex := 12, derive := true]
def A063487 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 1 + (x + (y / 3))) (λ (x _y) ↦ x) x 0 1 + x) / 2

end Sequence