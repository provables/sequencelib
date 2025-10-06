/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189318 sequence
-/

namespace Sequence

@[OEIS := A189318, offset := 0, maxIndex := 25, derive := true]
def A189318 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ 2 * (x + y)) x 2 1 * 2) + 1

end Sequence