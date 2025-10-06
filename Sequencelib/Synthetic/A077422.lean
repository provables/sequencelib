/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077422 sequence
-/

namespace Sequence

@[OEIS := A077422, offset := 0, maxIndex := 50, derive := true]
def A077422 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((((((x * 2) * 2) + y) % 2) + 2) * (x + x)) - y) (λ (x _y) ↦ x) (x + x) 1 2

end Sequence