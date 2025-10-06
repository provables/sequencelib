/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073587 sequence
-/

namespace Sequence

@[OEIS := A073587, offset := 0, maxIndex := 15, derive := true]
def A073587 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) x 1

end Sequence