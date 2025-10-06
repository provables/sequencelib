/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123358 sequence
-/

namespace Sequence

@[OEIS := A123358, offset := 0, maxIndex := 21, derive := true]
def A123358 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (2 * (y + y)) - x) (x + x) 1 2

end Sequence