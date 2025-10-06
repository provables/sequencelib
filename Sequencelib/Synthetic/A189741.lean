/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189741 sequence
-/

namespace Sequence

@[OEIS := A189741, offset := 1, maxIndex := 25, derive := true]
def A189741 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * loop2 (λ (_x y) ↦ y) (λ (x y) ↦ ((y + y) + x) * 2) x 2 1

end Sequence