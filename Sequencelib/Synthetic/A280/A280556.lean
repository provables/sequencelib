/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280556 sequence
-/

namespace Sequence

@[OEIS := A280556, offset := 0, maxIndex := 100, derive := true]
def A280556 (x : ℕ) : ℕ :=
  Int.toNat <| ((x - 1) * loop (λ (x y) ↦ (2 + y) * x) x 2) + 2

end Sequence