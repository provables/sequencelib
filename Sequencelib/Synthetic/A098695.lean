/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098695 sequence
-/

namespace Sequence

@[OEIS := A098695, offset := 0, maxIndex := 10, derive := true]
def A098695 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 * (x * y)) y x / 2) x 1

end Sequence