/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001921 sequence
-/

namespace Sequence

@[OEIS := A001921, offset := 0, maxIndex := 50, derive := true]
def A001921 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) (x + x) 1 0 / 2

end Sequence