/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081076 sequence
-/

namespace Sequence

@[OEIS := A081076, offset := 0, maxIndex := 50, derive := true]
def A081076 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (2 * (x + x)) 2 1 + 2)

end Sequence