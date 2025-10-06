/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091001 sequence
-/

namespace Sequence

@[OEIS := A091001, offset := 0, maxIndex := 100, derive := true]
def A091001 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y - 1) + y) + x) (λ (x _y) ↦ (x + x) + x) x 0 1

end Sequence