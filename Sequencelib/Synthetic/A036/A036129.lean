/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036129 sequence
-/

namespace Sequence

@[OEIS := A036129, offset := 0, maxIndex := 100, derive := true]
def A036129 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x 1 % (loop (λ (x y) ↦ ((x * x) + x) + y) 2 2 + 1)

end Sequence