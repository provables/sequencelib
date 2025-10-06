/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086444 sequence
-/

namespace Sequence

@[OEIS := A086444, offset := 0, maxIndex := 22, derive := true]
def A086444 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ (x + x) + y) (λ (_x y) ↦ (2 * (y + y)) + y) x 1 1 + 1) + loop (λ (x _y) ↦ (x + x) + x) x 1) / 2

end Sequence