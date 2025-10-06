/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108262 sequence
-/

namespace Sequence

@[OEIS := A108262, offset := 0, maxIndex := 22, derive := true]
def A108262 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ (x + y) + y) (x + x) 2 2

end Sequence