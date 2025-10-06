/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026396 sequence
-/

namespace Sequence

@[OEIS := A026396, offset := 0, maxIndex := 100, derive := true]
def A026396 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (2 * (y + y)) + y) (λ (x _y) ↦ 2 + x) x 1 1 + 2

end Sequence