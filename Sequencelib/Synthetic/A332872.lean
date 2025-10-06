/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A332872 sequence
-/

namespace Sequence

@[OEIS := A332872, offset := 0, maxIndex := 9, derive := true]
def A332872 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ 2 * ((x - y) + x)) (λ (x _y) ↦ x) x 1 1) / 2

end Sequence