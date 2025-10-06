/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110614 sequence
-/

namespace Sequence

@[OEIS := A110614, offset := 0, maxIndex := 100, derive := true]
def A110614 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y - x) + y * y) (λ (_x y) ↦ 2 * y) x 1 2

end Sequence