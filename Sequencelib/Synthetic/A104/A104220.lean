/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104220 sequence
-/

namespace Sequence

@[OEIS := A104220, offset := 0, maxIndex := 100, derive := true]
def A104220 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1 / 2))

end Sequence