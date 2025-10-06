/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274583 sequence
-/

namespace Sequence

@[OEIS := A274583, offset := 0, maxIndex := 64, derive := true]
def A274583 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y - 1) / 2) + x) ((x + x) / 3) 1 + x

end Sequence