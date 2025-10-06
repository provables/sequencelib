/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254664 sequence
-/

namespace Sequence

@[OEIS := A254664, offset := 0, maxIndex := 19, derive := true]
def A254664 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (2 * (x + x))) + y) (λ (x _y) ↦ (x + x) + x) x 1 1

end Sequence