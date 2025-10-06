/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122046 sequence
-/

namespace Sequence

@[OEIS := A122046, offset := 0, maxIndex := 53, derive := true]
def A122046 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((((y * y) / 2) / 2) / 2) + x) x 0

end Sequence