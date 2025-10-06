/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266248 sequence
-/

namespace Sequence

@[OEIS := A266248, offset := 0, maxIndex := 100, derive := true]
def A266248 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((((x % (1 + 4)) + y) % 2) + x) + x) x 2 / 2

end Sequence