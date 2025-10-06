/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131941 sequence
-/

namespace Sequence

@[OEIS := A131941, offset := 0, maxIndex := 45, derive := true]
def A131941 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((1 + (y * y)) / 2) + x) x 0

end Sequence