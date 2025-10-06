/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006646 sequence
-/

namespace Sequence

@[OEIS := A006646, offset := 0, maxIndex := 100, derive := true]
def A006646 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y - 1) (λ (x y) ↦ (x + y) + y) x 0 1 * (loop (λ (x _y) ↦ x + x) x 1 / 2)

end Sequence