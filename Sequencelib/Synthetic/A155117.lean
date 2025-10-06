/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155117 sequence
-/

namespace Sequence

@[OEIS := A155117, offset := 0, maxIndex := 100, derive := true]
def A155117 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ 2 * (2 * (x + y))) (λ (x _y) ↦ x) x 3 0) / 4

end Sequence