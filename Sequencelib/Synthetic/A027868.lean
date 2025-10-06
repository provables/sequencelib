/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027868 sequence
-/

namespace Sequence

@[OEIS := A027868, offset := 0, maxIndex := 80, derive := true]
def A027868 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / (1 + 4)) x 0 x - x

end Sequence