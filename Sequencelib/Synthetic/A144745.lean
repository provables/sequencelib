/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144745 sequence
-/

namespace Sequence

@[OEIS := A144745, offset := 0, maxIndex := 6, derive := true]
def A144745 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((x * x) - 2) + x) x (2 * 4) + 1

end Sequence